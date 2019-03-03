// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Masked/Mask" {
 
	SubShader {
		// Render the mask after regular geometry, but before masked geometry and
		// transparent things.
 
		Tags {"Queue" = "Geometry-1" "RenderType" = "Opaque" }
 
		// Don't draw in the RGBA channels; just the depth buffer
 
		ColorMask 0
		ZWrite Off
 
		// Do nothing specific in the pass:
 
		Stencil
        {
            Ref 1
            Comp always
            Pass replace
        }

        Pass
        {
            Cull Back
            ZTest Less

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            struct appdata
            {
                float4 vertex : POSITION;
            };
            struct v2f
            {
                float4 pos : SV_POSITION;
            };
            v2f vert(appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            half4 frag(v2f i) : COLOR
            {
                return half4(1,1,0,1);
            }

            ENDCG
        }
    }
}

