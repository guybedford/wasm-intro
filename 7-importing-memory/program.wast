(module
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (type $FUNCSIG$vi (func (param i32)))
  (import "env" "memory" (memory $mem 1))
  (import "env" "free" (func $free (param i32)))
  (import "env" "malloc" (func $malloc (param i32) (result i32)))
  (table 0 anyfunc)
  (export "createRecord" (func $createRecord))
  (export "deleteRecord" (func $deleteRecord))
  (func $createRecord (param $0 i32) (param $1 f32) (param $2 f32) (result i32)
    (local $3 i32)
    (f32.store offset=4
      (tee_local $3
        (call $malloc
          (i32.const 12)
        )
      )
      (get_local $1)
    )
    (i32.store
      (get_local $3)
      (get_local $0)
    )
    (f32.store offset=8
      (get_local $3)
      (get_local $2)
    )
    (get_local $3)
  )
  (func $deleteRecord (param $0 i32)
    (call $free
      (get_local $0)
    )
  )
)

