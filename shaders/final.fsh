#version 120

uniform sampler2D depthtex0;
uniform sampler2D composite;
//uniform float aspectRatio;
//uniform float near;
//uniform float far;
//uniform float viewWidth;
//uniform float viewHeight;
varying vec4 texcoord;

void main() {
	vec4 color = texture2D(composite, texcoord.st);
  float grey = (color.r + color.g + color.b ) * 0.333;

	gl_FragColor = vec4(grey, grey, grey, 1.0);//vec4(grey,grey,grey,1.0);
}
