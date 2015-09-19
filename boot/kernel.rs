fn kmain() {
    let vid_buffer: *char = 0xb8000 as (*char);
    vid_buff[0] = 'R';
    vid_buffer[1] = 0x07;
}
