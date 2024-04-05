shader_type spatial;

varying float now;
void vertex() {
	// Called for every vertex the material is visible on.

	VERTEX.y += 0.25* sin(VERTEX.x * 0.2 * sin(TIME))  + 0.25*  sin(VERTEX.z * 0.2 * sin(TIME)) ;
}

void fragment() {
	// Called for every pixel the material is visible on.
  //NORMAL_MAP = texture(normalmap, tex_position).xyz;
  //float fresnel = sqrt(1.0 - dot(NORMAL, VIEW));	
  //RIM = 0.2;
  //METALLIC = 0.0;
  //ROUGHNESS = 0.01 * (1.0 - fresnel);
  ALBEDO = vec3(0.1, 0.3, 0.5) ; // + (0.1 * fresnel);
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
