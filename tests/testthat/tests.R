expect_equal(class(auto_test2means( rnorm(100), rnorm(100))), "htest")
expect_equal(class(auto_test2means( rnorm(100, 2, 2), rnorm(100, 2, 16))), "htest")
expect_equal(class(auto_test2means( rnorm(100), rexp(100,3))), "htest")

