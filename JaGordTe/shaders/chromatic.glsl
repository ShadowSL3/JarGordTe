shader_type canvas_item;

uniform float aberration_amount : hint_range(0.0, 1.0) = 0.02;

void fragment() {
    vec2 uv = FRAGCOORD.xy / SCREEN_PIXEL_SIZE;
    vec2 offset = aberration_amount * vec2(0.01, 0.01);

    vec4 color_r = texture(SCREEN_TEXTURE, uv + offset);
    vec4 color_g = texture(SCREEN_TEXTURE, uv);
    vec4 color_b = texture(SCREEN_TEXTURE, uv - offset);

    COLOR = vec4(color_r.r, color_g.g, color_b.b, 1.0);
}