///|
extern "C" fn core_init_window(
  width : Int,
  height : Int,
  title : Bytes,
) -> Unit = "InitWindow"

///|
extern "C" fn core_window_should_close() -> Bool = "WindowShouldClose"

///|
extern "C" fn core_begin_drawing() -> Unit = "BeginDrawing"

///|
extern "C" fn core_end_drawing() -> Unit = "EndDrawing"

///|
extern "C" fn core_close_window() -> Unit = "CloseWindow"
