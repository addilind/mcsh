#version 120

//#define BUMP_MAPPING
//#define CURVY_WORLD
//#define CURVY_WORLD_RADIUS 30.0
//#define CURVY_WORLD_RADIUS_SQUARED 10000.0
//#define ACID

varying vec4 color;
varying vec4 texcoord;
#ifdef BUMP_MAPPING
varying vec3 normal;
#endif

#ifdef ACID
uniform int worldTime;
#endif


attribute vec4 mc_Entity;

#define ENTGLASS 20.0

void main() {
  vec4 position = gl_ModelViewMatrix * gl_Vertex;

  if(mc_Entity.x == ENTGLASS) {
    position.x += 0.5;
  }

	gl_Position = gl_ProjectionMatrix * position;


	color = gl_Color;

	texcoord = gl_TextureMatrix[0] * gl_MultiTexCoord0;

  #ifdef BUMP_MAPPING
  normal = gl_Normal;
  #endif

	gl_FogFragCoord = gl_Position.z;
}
