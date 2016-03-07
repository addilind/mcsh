#version 120

uniform sampler2D texture;
uniform sampler2D lightmap;

varying vec4 color;
varying vec4 texcoord;
varying vec4 lmcoord;

void main() {

	gl_FragData[0] = vec4(1.0, 0.0,1.0, 1.0);
	gl_FragData[1] = vec4(0.0);

}
