# bodies with paths are handled properly

    Code
      test_result <- req_prepare(base_url = "https://example.com", body = list(foo = "bar",
        baz = fs::path(test_path("fixtures", "img-test.png"))))
      test_result$body
    Output
      $data
      $data$foo
      Form data of length 5 (type: application/json) 
      
      $data$baz
      Form file: img-test.png 
      
      
      $type
      [1] "multipart"
      
      $content_type
      NULL
      
      $params
      list()
      

# .as_nectar_request() fails gracefully for non-reqs

    Code
      .as_nectar_request(test_obj)
    Condition
      Error:
      ! `1` must be a <httr2_request>.
      x `1` is a number.

