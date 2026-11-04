package br.com.fiap.petcore.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import br.com.fiap.petcore.model.Historico;
import br.com.fiap.petcore.model.Medico;
import br.com.fiap.petcore.model.Prontuario;
import br.com.fiap.petcore.repository.ExameRepository;
import br.com.fiap.petcore.repository.HistoricoRepository;
import br.com.fiap.petcore.repository.MedicoRepository;
import br.com.fiap.petcore.repository.ProntuarioRepository;
import br.com.fiap.petcore.repository.ReceitaRepository;

@ExtendWith(MockitoExtension.class)
@DisplayName("Testes de CRUD - Prontuario")
class ProntuarioServiceImpTest {

    @Mock
    private ProntuarioRepository prontuarioRepository;

    @Mock
    private MedicoRepository medicoRepository;

    @Mock
    private HistoricoRepository historicoRepository;

    @Mock
    private ExameRepository exameRepository;

    @Mock
    private ReceitaRepository receitaRepository;

    @InjectMocks
    private ProntuarioServiceImp prontuarioService;

    private Medico medico;
    private Historico historico;
    private Prontuario prontuario;

    @BeforeEach
    void setUp() {
        medico = new Medico();
        medico.setId(1L);
        medico.setProntuarios(new HashSet<>());

        historico = new Historico();
        historico.setId(1L);
        historico.setProntuarios(new HashSet<>());

        prontuario = new Prontuario(1L, LocalDateTime.of(2026, 10, 1, 14, 30),
                "Consulta de rotina, animal saudavel.", medico, null, null, historico);
    }

    @Test
    @DisplayName("Inclusao: cria o prontuario vinculado ao medico e ao historico")
    void create_DeveSalvarProntuarioVinculado() {
        when(medicoRepository.findById(1L)).thenReturn(Optional.of(medico));
        when(historicoRepository.findById(1L)).thenReturn(Optional.of(historico));
        when(prontuarioRepository.save(any(Prontuario.class))).thenAnswer(inv -> inv.getArgument(0));

        Prontuario resultado = prontuarioService.create(prontuario);

        assertSame(medico, resultado.getMedico());
        assertSame(historico, resultado.getHistorico());
        assertTrue(historico.getProntuarios().contains(resultado));
        verify(historicoRepository).save(historico);
    }

    @Test
    @DisplayName("Consulta: lista todos os prontuarios paginados")
    void fetchAll_DeveRetornarTodosOsProntuarios() {
        Prontuario outro = new Prontuario(2L, LocalDateTime.of(2026, 10, 2, 9, 0),
                "Retorno para avaliacao de vacinas.", medico, null, null, historico);
        Pageable pageable = PageRequest.of(0, 10);
        when(prontuarioRepository.findAll(pageable)).thenReturn(new PageImpl<>(List.of(prontuario, outro)));

        Page<Prontuario> resultado = prontuarioService.fetchAll(pageable);

        assertEquals(2, resultado.getTotalElements());
    }

    @Test
    @DisplayName("Consulta: busca o prontuario pelo ID")
    void fetchById_DeveRetornarProntuario_QuandoExiste() {
        when(prontuarioRepository.findById(1L)).thenReturn(Optional.of(prontuario));

        Optional<Prontuario> resultado = prontuarioService.fetchById(1L);

        assertTrue(resultado.isPresent());
        assertEquals("Consulta de rotina, animal saudavel.", resultado.get().getDescricao());
    }

    @Test
    @DisplayName("Alteracao: atualiza a descricao do prontuario")
    void update_DeveAlterarDescricao() {
        Prontuario patch = new Prontuario();
        patch.setDescricao("Consulta de rotina, prescrito vermifugo.");
        when(prontuarioRepository.findById(1L)).thenReturn(Optional.of(prontuario));
        when(prontuarioRepository.save(any(Prontuario.class))).thenAnswer(inv -> inv.getArgument(0));

        Optional<Prontuario> resultado = prontuarioService.update(1L, patch);

        assertTrue(resultado.isPresent());
        assertEquals("Consulta de rotina, prescrito vermifugo.", resultado.get().getDescricao());
    }

    @Test
    @DisplayName("Alteracao: retorna vazio ao atualizar prontuario inexistente")
    void update_DeveRetornarVazio_QuandoNaoExiste() {
        when(prontuarioRepository.findById(99L)).thenReturn(Optional.empty());

        Optional<Prontuario> resultado = prontuarioService.update(99L, new Prontuario());

        assertFalse(resultado.isPresent());
    }

    @Test
    @DisplayName("Exclusao: remove o prontuario e desfaz os vinculos")
    void delete_DeveRemoverProntuarioEDesvincular() {
        historico.getProntuarios().add(prontuario);
        medico.getProntuarios().add(prontuario);
        when(prontuarioRepository.findById(1L)).thenReturn(Optional.of(prontuario));

        prontuarioService.delete(1L);

        assertFalse(historico.getProntuarios().contains(prontuario));
        assertFalse(medico.getProntuarios().contains(prontuario));
        verify(prontuarioRepository).delete(prontuario);
    }
}
