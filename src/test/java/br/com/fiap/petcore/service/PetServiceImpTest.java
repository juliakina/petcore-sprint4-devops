package br.com.fiap.petcore.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.time.LocalDate;
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
import br.com.fiap.petcore.model.Pet;
import br.com.fiap.petcore.model.SexoEnum;
import br.com.fiap.petcore.model.StatusEnum;
import br.com.fiap.petcore.repository.ExameRepository;
import br.com.fiap.petcore.repository.HistoricoRepository;
import br.com.fiap.petcore.repository.PetRepository;
import br.com.fiap.petcore.repository.ReceitaRepository;


@ExtendWith(MockitoExtension.class)
@DisplayName("Testes de CRUD - Pet")
class PetServiceImpTest {

    @Mock
    private PetRepository petRepository;

    @Mock
    private HistoricoRepository historicoRepository;

    @Mock
    private ExameRepository exameRepository;

    @Mock
    private ReceitaRepository receitaRepository;

    @InjectMocks
    private PetServiceImp petService;

    private Pet pet;

    @BeforeEach
    void setUp() {
        pet = new Pet(1L, "Thor", "Cachorro", "Golden Retriever", LocalDate.of(2020, 5, 10),
                "Dourada", "Grande", SexoEnum.M, StatusEnum.ATIVO, "https://img.petcore/thor.png", null, null);
    }

    @Test
    @DisplayName("Inclusao: cria o pet e gera o historico ATIVO")
    void create_DeveSalvarPetECriarHistoricoAtivo() {
        when(petRepository.save(any(Pet.class))).thenAnswer(inv -> inv.getArgument(0));
        when(historicoRepository.save(any(Historico.class))).thenAnswer(inv -> inv.getArgument(0));

        Pet resultado = petService.create(pet);

        assertNotNull(resultado.getHistorico());
        assertEquals(StatusEnum.ATIVO, resultado.getHistorico().getStatus());
        assertEquals("Thor", resultado.getHistorico().getPet().getNome());
        verify(petRepository, times(2)).save(any(Pet.class));
        verify(historicoRepository).save(any(Historico.class));
    }

    @Test
    @DisplayName("Consulta: lista todos os pets paginados")
    void fetchAll_DeveRetornarTodosOsPets() {
        Pet outro = new Pet(2L, "Mel", "Gato", "Siames", LocalDate.of(2021, 3, 2),
                "Creme", "Pequeno", SexoEnum.F, StatusEnum.ATIVO, null, null, null);
        Pageable pageable = PageRequest.of(0, 10);
        when(petRepository.findAll(pageable)).thenReturn(new PageImpl<>(List.of(pet, outro)));

        Page<Pet> resultado = petService.fetchAll(pageable);

        assertEquals(2, resultado.getTotalElements());
    }

    @Test
    @DisplayName("Consulta: busca o pet pelo ID")
    void fetchById_DeveRetornarPet_QuandoExiste() {
        when(petRepository.findById(1L)).thenReturn(Optional.of(pet));

        Optional<Pet> resultado = petService.fetchById(1L);

        assertTrue(resultado.isPresent());
        assertEquals("Golden Retriever", resultado.get().getRaca());
    }

    @Test
    @DisplayName("Consulta: retorna vazio quando o pet nao existe")
    void fetchById_DeveRetornarVazio_QuandoNaoExiste() {
        when(petRepository.findById(99L)).thenReturn(Optional.empty());

        Optional<Pet> resultado = petService.fetchById(99L);

        assertFalse(resultado.isPresent());
    }

    @Test
    @DisplayName("Alteracao: atualiza a imagem do pet ativo")
    void updateImage_DeveAtualizarUrlDaImagem() {
        Pet patch = new Pet();
        patch.setUrlImg("https://img.petcore/thor-novo.png");
        when(petRepository.findById(1L)).thenReturn(Optional.of(pet));
        when(petRepository.save(any(Pet.class))).thenAnswer(inv -> inv.getArgument(0));

        Optional<Pet> resultado = petService.updateImage(1L, patch);

        assertTrue(resultado.isPresent());
        assertEquals("https://img.petcore/thor-novo.png", resultado.get().getUrlImg());
    }

    @Test
    @DisplayName("Alteracao: inativar o pet tambem inativa o historico")
    void updateStatus_DeveInativarPetEHistorico() {
        Historico historico = new Historico();
        historico.setStatus(StatusEnum.ATIVO);
        pet.setHistorico(historico);

        Pet patch = new Pet();
        patch.setStatus(StatusEnum.INATIVO);

        when(petRepository.findById(1L)).thenReturn(Optional.of(pet));
        when(petRepository.save(any(Pet.class))).thenAnswer(inv -> inv.getArgument(0));

        Optional<Pet> resultado = petService.updateStatus(1L, patch);

        assertTrue(resultado.isPresent());
        assertEquals(StatusEnum.INATIVO, resultado.get().getStatus());
        assertEquals(StatusEnum.INATIVO, resultado.get().getHistorico().getStatus());
        verify(historicoRepository).save(historico);
    }

    @Test
    @DisplayName("Exclusao: remove o pet pelo ID")
    void delete_DeveRemoverPet() {
        when(petRepository.findById(1L)).thenReturn(Optional.of(pet));

        petService.delete(1L);
        
        verify(petRepository).delete(pet);
    }
}
