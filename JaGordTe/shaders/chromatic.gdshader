shader_type canvas_item;

uniform float aberration_amount : hint_range(0.0, 1.0) = 0.02;
uniform float scanline_intensity : hint_range(0.0, 1.0) = 0.5;
uniform float vignette_intensity : hint_range(0.0, 1.0) = 0.5;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear;

void fragment() {
    vec2 uv = FRAGCOORD.xy / vec2(SCREEN_PIXEL_SIZE.x, SCREEN_PIXEL_SIZE.y);
    vec2 offset = aberration_amount * vec2(uv.x * 0.01, uv.y * 0.01);

    vec4 color_r = texture(SCREEN_TEXTURE, uv + vec2(offset.x, 0.0));
    vec4 color_g = texture(SCREEN_TEXTURE, uv);
    vec4 color_b = texture(SCREEN_TEXTURE, uv - vec2(offset.x, 0.0));

    vec4 color = vec4(color_r.r, color_g.g, color_b.b, 1.0);

    // Apply scanline effect
    float scanline = sin(uv.y * SCREEN_PIXEL_SIZE.y * 3.14159 * 2.0) * 0.5 + 0.5;
    color.rgb *= mix(1.0, scanline, scanline_intensity);

    // Apply vignette effect
    float dist = distance(uv, vec2(0.5, 0.5));
    float vignette = smoothstep(0.5, 0.8, dist);
    color.rgb *= mix(1.0, vignette, vignette_intensity);

    COLOR = color;
}