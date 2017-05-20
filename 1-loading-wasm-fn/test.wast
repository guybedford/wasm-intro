(module
  (export "sqrt" (func $sqrt))
  (func $sqrt
    (param $num f32)
    (result f32)
    (f32.sqrt (get_local $num))
  )
)
