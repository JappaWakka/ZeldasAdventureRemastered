// Color Overlay Fragment Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_colour;
uniform float u_mix;

void main()
{
    vec4 TexColor = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 ChangeColor = vec4(u_colour.rgb, TexColor.a);
	vec4 FinalColor = mix(TexColor, ChangeColor, u_mix);
	gl_FragColor = v_vColour * FinalColor;
}