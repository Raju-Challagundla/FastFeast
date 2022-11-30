//package com.uncc.ce.login.service.test;
//
//import static org.junit.Assert.assertEquals;
//import static org.mockito.ArgumentMatchers.any;
//import static org.mockito.MockitoAnnotations.initMocks;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.mockito.Mock;
//import org.mockito.Mockito;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import com.uncc.ce.login.repository.AdminRepository;
//import com.uncc.ce.login.repository.RoleRepository;
//import com.uncc.ce.login.service.UserService;
//
//public class UserServiceTest {
//
//    @Mock
//    private AdminRepository mockUserRepository;
//    @Mock
//    private RoleRepository mockRoleRepository;
//    @Mock
//    private BCryptPasswordEncoder mockBCryptPasswordEncoder;
//
//    private UserService userServiceUnderTest;
//    private User user;
//
//    @Before
//    public void setUp() {
//        initMocks(this);
////        userServiceUnderTest = new UserService(mockUserRepository,
////                                               mockRoleRepository);
//        user = User.builder()
//                .id(1)
//                .name("Gustavo")
//                .lastName("Ponce")
//                .email("test@test.com")
//                .build();
//
//        Mockito.when(mockUserRepository.save(any()))
//                .thenReturn(user);
////        Mockito.when(mockUserRepository.findByEmail(anyString()))
////                .thenReturn(user);
//    }
//
//    @Test
//    public void testFindUserByEmail() {
//        // Setup
//        final String email = "test@test.com";
//
//        // Run the test
//        final User result = userServiceUnderTest.findUserByEmail(email);
//
//        // Verify the results
//        assertEquals(email, result.getEmail());
//    }
//
//    @Test
//    public void testSaveUser() {
//        // Setup
//        final String email = "test@test.com";
//
//        // Run the test
//        User result = userServiceUnderTest.saveUser(User.builder().build());
//
//        // Verify the results
//        assertEquals(email, result.getEmail());
//    }
//}