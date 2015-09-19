fn kmain() {
    let vid_buffer: *mut char = 0xb8000 as (*mut char);
    unsafe {
        vid_buff[0] = 'R';
        //vid_buffer[1] = 0x07;
    }
}
