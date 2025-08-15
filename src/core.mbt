///|
fn c_str(s : String) -> Bytes {
  let s = s.to_array()
  s.push('\u{0000}')
  return s.map(fn(c) { c.to_int().to_byte() }) |> Bytes::from_array
}

///|
pub fn init_window(width : Int, height : Int, title : String) -> Unit {
  core_init_window(width, height, c_str(title))
}

///|
pub fn window_should_close() -> Bool {
  core_window_should_close()
}

///|
pub fn begin_drawing() -> Unit {
  core_begin_drawing()
}

///|
pub fn end_drawing() -> Unit {
  core_end_drawing()
}

///|
pub fn close_window() -> Unit {
  core_close_window()
}
