context("ticket/merge")

test_that("a ticket can be merged", {
  tik1 <- rt_ticket_create("General")
  tik2 <- rt_ticket_create("General")
  merge_result <- rt_ticket_merge(tik1, tik2)

  testthat::expect_equal(merge_result$body, "Merge completed.")
})