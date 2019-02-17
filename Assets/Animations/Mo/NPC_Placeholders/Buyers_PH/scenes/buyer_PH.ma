//Maya ASCII 2017 scene
//Name: Malebuyer_PH.ma
//Last modified: Tue, Jan 29, 2019 12:50:10 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKControlSetNode"
		 -nodeType "HIKEffectorFromCharacter" -nodeType "HIKFK2State" -nodeType "HIKState2FK"
		 -nodeType "HIKState2SK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
currentUnit -l foot -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1FFB3634-4735-733D-4BE5-3182BC9D2467";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.5194442050887929 2.8131043402718214 9.2551686114734899 ;
	setAttr ".r" -type "double3" -364.53835273106216 348.19999999998754 -1.0153809896708845e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E3017AA6-4B24-4309-DC32-6A9730927EFF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".fd" 0.16404199475065617;
	setAttr ".coi" 9.1522348107223905;
	setAttr ".ow" 0.32808398950131235;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CB185B3C-481D-8307-AE6F-A2AADB296262";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 32.811679790026247 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FEF0DCE4-43AE-14C3-B610-9D8B8348AE8E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".fd" 0.16404199475065617;
	setAttr ".coi" 32.811679790026247;
	setAttr ".ow" 0.98425196850393704;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4AACD926-4821-7230-AAE0-298D9130595F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 32.811679790026247 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E86B5C96-450D-2C6B-24C6-7A98F13883ED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".fd" 0.16404199475065617;
	setAttr ".coi" 32.811679790026247;
	setAttr ".ow" 0.98425196850393704;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F6F145C9-47EB-FBD7-6998-B2BFAB0555C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 32.811679790026247 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "789FD5E4-4899-2523-54AF-35B6BEF6D2EE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".fd" 0.16404199475065617;
	setAttr ".coi" 32.811679790026247;
	setAttr ".ow" 0.98425196850393704;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "This_is_a_Box_for_scale";
	rename -uid "3863F59E-4E22-923D-3600-B6979AD3B1E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4834160669717309 2.0491238511195728 -2.3503378066673446 ;
	setAttr ".s" -type "double3" 1 4 1 ;
createNode mesh -n "This_is_a_Box_for_scaleShape" -p "This_is_a_Box_for_scale";
	rename -uid "1889C33B-4306-8A55-7D97-66A8CD408FC4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "MaleBuyerMesh_Seperated";
	rename -uid "438B4172-4DC1-5F45-60F8-6092F4E7D73E";
	setAttr ".v" no;
createNode transform -n "Forearm_L" -p "MaleBuyerMesh_Seperated";
	rename -uid "F4FFC880-42FE-3E96-33F0-36B77A61598B";
	setAttr ".t" -type "double3" 1.187 2.5663945179130874 0.041946891135539371 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
createNode mesh -n "Forearm_LShape" -p "|MaleBuyerMesh_Seperated|Forearm_L";
	rename -uid "91A4D6BC-4C68-CE33-9FEF-71A7E195D47A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44035536050796509 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.44348198 0.25 0.44348198 0.5 0.44348198 0.75 0.44348198
		 0 0.44348198 1 0.43722874 0.25 0.43722874 0.5 0.43722874 0.75 0.43722874 0 0.43722874
		 1 0.4474487 0.25 0.4474487 0.5 0.4474487 0.75 0.4474487 0 0.4474487 1 0.4335759 0.25
		 0.4335759 0.5 0.4335759 0.75 0.4335759 0 0.4335759 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.04493732 -5.8665988e-009 -3.9110661e-009 ;
	setAttr ".pt[2]" -type "float3" -0.04493732 -0.062961146 -3.9110661e-009 ;
	setAttr ".pt[4]" -type "float3" -0.04493732 -0.062961146 3.9110661e-009 ;
	setAttr ".pt[6]" -type "float3" -0.04493732 -5.8665988e-009 3.9110661e-009 ;
	setAttr ".pt[8]" -type "float3" -0.0013577258 -0.012210348 -0.013782064 ;
	setAttr ".pt[9]" -type "float3" -0.0013577258 -0.012210348 0.013782057 ;
	setAttr ".pt[10]" -type "float3" -0.0013577258 0.012210348 0.013782057 ;
	setAttr ".pt[11]" -type "float3" -0.0013577258 0.012210348 -0.013782064 ;
	setAttr ".pt[12]" -type "float3" 0.0013577283 -0.012210351 -0.013782064 ;
	setAttr ".pt[13]" -type "float3" 0.0013577283 -0.012210351 0.013782057 ;
	setAttr ".pt[14]" -type "float3" 0.0013577283 0.012210351 0.013782057 ;
	setAttr ".pt[15]" -type "float3" 0.0013577283 0.012210351 -0.013782064 ;
	setAttr ".pt[17]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[19]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[20]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[21]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[22]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[23]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.41270763 -0.092837632 0.1047875 0.41270763 -0.092837632 0.1047875
		 -0.41270763 0.092837632 0.1047875 0.41270763 0.092837632 0.1047875 -0.41270763 0.092837632 -0.1047875
		 0.41270763 0.092837632 -0.1047875 -0.41270763 -0.092837632 -0.1047875 0.41270763 -0.092837632 -0.1047875
		 -0.18660335 0.092837624 0.1047875 -0.18660335 0.092837624 -0.1047875 -0.18660335 -0.092837624 -0.1047875
		 -0.18660335 -0.092837624 0.1047875 -0.20724949 0.092837624 0.1047875 -0.20724949 0.092837624 -0.1047875
		 -0.20724949 -0.092837624 -0.1047875 -0.20724949 -0.092837624 0.1047875 -0.17350663 0.092837624 0.1047875
		 -0.17350663 0.092837624 -0.1047875 -0.17350663 -0.092837624 -0.1047875 -0.17350663 -0.092837624 0.1047875
		 -0.21930997 0.092837624 0.1047875 -0.21930997 0.092837624 -0.1047875 -0.21930997 -0.092837624 -0.1047875
		 -0.21930997 -0.092837624 0.1047875;
	setAttr -s 44 ".ed[0:43]"  0 23 0 2 20 0 4 21 0 6 22 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 8 9 1 10 18 0 9 10 1 11 19 0 10 11 1
		 11 8 1 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 5 0
		 16 17 1 18 7 0 17 18 1 19 1 0 18 19 1 19 16 1 20 12 0 21 13 0 20 21 1 22 14 0 21 22 1
		 23 15 0 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 43 -2 -5
		mu 0 4 0 32 29 2
		f 4 1 38 -3 -7
		mu 0 4 2 29 30 4
		f 4 2 40 -4 -9
		mu 0 4 4 30 31 6
		f 4 3 42 -1 -11
		mu 0 4 6 31 33 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 30 -14 -15
		mu 0 4 14 24 25 15
		f 4 -17 13 32 -16
		mu 0 4 16 15 25 26
		f 4 -19 15 34 -18
		mu 0 4 18 16 26 28
		f 4 -20 17 35 -13
		mu 0 4 14 17 27 24
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 21 20 15 16
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 22 17 14
		f 4 28 7 -30 -31
		mu 0 4 24 3 5 25
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -35 31 11 -34
		mu 0 4 28 26 7 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 36 22 -38 -39
		mu 0 4 29 19 20 30
		f 4 -41 37 24 -40
		mu 0 4 31 30 20 21
		f 4 -43 39 26 -42
		mu 0 4 33 31 21 23
		f 4 -44 41 27 -37
		mu 0 4 29 32 22 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "|MaleBuyerMesh_Seperated|Forearm_L";
	rename -uid "F166951A-4E1F-E3FB-30AA-059E474ABB16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.087292358 0.40716237 -0.3952125 
		-0.087292358 0.40716237 -0.3952125 0.087292358 -0.40716237 -0.3952125 -0.087292358 
		-0.40716237 -0.3952125 0.087292358 -0.40716237 0.3952125 -0.087292358 -0.40716237 
		0.3952125 0.087292358 0.40716237 0.3952125 -0.087292358 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Upperarm_L" -p "MaleBuyerMesh_Seperated";
	rename -uid "ECF3C757-497A-68A0-C44F-25B4CF58DAA3";
	setAttr ".t" -type "double3" 0.536 2.5663945179130874 0.041946891135539371 ;
createNode mesh -n "Upperarm_LShape" -p "|MaleBuyerMesh_Seperated|Upperarm_L";
	rename -uid "B31CFA89-442D-18BF-58BE-9B9FBA0AA74C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.27211982 0.40716237 -0.3952125 
		-0.27211982 0.40716237 -0.3952125 0.27211982 -0.40716237 -0.3952125 -0.27211982 -0.40716237 
		-0.3952125 0.27211982 -0.40716237 0.3952125 -0.27211982 -0.40716237 0.3952125 0.27211982 
		0.40716237 0.3952125 -0.27211982 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Forearm_R" -p "MaleBuyerMesh_Seperated";
	rename -uid "7494C34C-4559-F4DC-3507-5A93FE80AAF1";
	setAttr ".t" -type "double3" -1.1869744979221162 2.5663945179130874 0.041946891135539371 ;
createNode mesh -n "Forearm_RShape" -p "|MaleBuyerMesh_Seperated|Forearm_R";
	rename -uid "55F12C02-4048-94B8-FBCF-82909D4520FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44035536050796509 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.44348198 0.25 0.44348198 0.5 0.44348198 0.75 0.44348198
		 0 0.44348198 1 0.43722874 0.25 0.43722874 0.5 0.43722874 0.75 0.43722874 0 0.43722874
		 1 0.4474487 0.25 0.4474487 0.5 0.4474487 0.75 0.4474487 0 0.4474487 1 0.4335759 0.25
		 0.4335759 0.5 0.4335759 0.75 0.4335759 0 0.4335759 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.04493732 -5.8665988e-009 -3.9110661e-009 ;
	setAttr ".pt[2]" -type "float3" -0.04493732 -0.062961146 -3.9110661e-009 ;
	setAttr ".pt[4]" -type "float3" -0.04493732 -0.062961146 3.9110661e-009 ;
	setAttr ".pt[6]" -type "float3" -0.04493732 -5.8665988e-009 3.9110661e-009 ;
	setAttr ".pt[8]" -type "float3" -0.0013577258 -0.012210348 -0.013782064 ;
	setAttr ".pt[9]" -type "float3" -0.0013577258 -0.012210348 0.013782057 ;
	setAttr ".pt[10]" -type "float3" -0.0013577258 0.012210348 0.013782057 ;
	setAttr ".pt[11]" -type "float3" -0.0013577258 0.012210348 -0.013782064 ;
	setAttr ".pt[12]" -type "float3" 0.0013577283 -0.012210351 -0.013782064 ;
	setAttr ".pt[13]" -type "float3" 0.0013577283 -0.012210351 0.013782057 ;
	setAttr ".pt[14]" -type "float3" 0.0013577283 0.012210351 0.013782057 ;
	setAttr ".pt[15]" -type "float3" 0.0013577283 0.012210351 -0.013782064 ;
	setAttr ".pt[17]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[19]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[20]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[21]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[22]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[23]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.41270763 -0.092837632 0.1047875 0.41270763 -0.092837632 0.1047875
		 -0.41270763 0.092837632 0.1047875 0.41270763 0.092837632 0.1047875 -0.41270763 0.092837632 -0.1047875
		 0.41270763 0.092837632 -0.1047875 -0.41270763 -0.092837632 -0.1047875 0.41270763 -0.092837632 -0.1047875
		 -0.18660335 0.092837624 0.1047875 -0.18660335 0.092837624 -0.1047875 -0.18660335 -0.092837624 -0.1047875
		 -0.18660335 -0.092837624 0.1047875 -0.20724949 0.092837624 0.1047875 -0.20724949 0.092837624 -0.1047875
		 -0.20724949 -0.092837624 -0.1047875 -0.20724949 -0.092837624 0.1047875 -0.17350663 0.092837624 0.1047875
		 -0.17350663 0.092837624 -0.1047875 -0.17350663 -0.092837624 -0.1047875 -0.17350663 -0.092837624 0.1047875
		 -0.21930997 0.092837624 0.1047875 -0.21930997 0.092837624 -0.1047875 -0.21930997 -0.092837624 -0.1047875
		 -0.21930997 -0.092837624 0.1047875;
	setAttr -s 44 ".ed[0:43]"  0 23 0 2 20 0 4 21 0 6 22 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 8 9 1 10 18 0 9 10 1 11 19 0 10 11 1
		 11 8 1 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 5 0
		 16 17 1 18 7 0 17 18 1 19 1 0 18 19 1 19 16 1 20 12 0 21 13 0 20 21 1 22 14 0 21 22 1
		 23 15 0 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 43 -2 -5
		mu 0 4 0 32 29 2
		f 4 1 38 -3 -7
		mu 0 4 2 29 30 4
		f 4 2 40 -4 -9
		mu 0 4 4 30 31 6
		f 4 3 42 -1 -11
		mu 0 4 6 31 33 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 30 -14 -15
		mu 0 4 14 24 25 15
		f 4 -17 13 32 -16
		mu 0 4 16 15 25 26
		f 4 -19 15 34 -18
		mu 0 4 18 16 26 28
		f 4 -20 17 35 -13
		mu 0 4 14 17 27 24
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 21 20 15 16
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 22 17 14
		f 4 28 7 -30 -31
		mu 0 4 24 3 5 25
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -35 31 11 -34
		mu 0 4 28 26 7 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 36 22 -38 -39
		mu 0 4 29 19 20 30
		f 4 -41 37 24 -40
		mu 0 4 31 30 20 21
		f 4 -43 39 26 -42
		mu 0 4 33 31 21 23
		f 4 -44 41 27 -37
		mu 0 4 29 32 22 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "|MaleBuyerMesh_Seperated|Forearm_R";
	rename -uid "67BBBB8F-45B8-BE2E-32E7-78B457C99536";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.087292358 0.40716237 -0.3952125 
		-0.087292358 0.40716237 -0.3952125 0.087292358 -0.40716237 -0.3952125 -0.087292358 
		-0.40716237 -0.3952125 0.087292358 -0.40716237 0.3952125 -0.087292358 -0.40716237 
		0.3952125 0.087292358 0.40716237 0.3952125 -0.087292358 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Upperarm_R" -p "MaleBuyerMesh_Seperated";
	rename -uid "4EAEF554-4A32-4AC8-6947-369FC5158144";
	setAttr ".t" -type "double3" -0.53585528316237219 2.5663945179130874 0.041946891135539371 ;
createNode mesh -n "Upperarm_RShape" -p "|MaleBuyerMesh_Seperated|Upperarm_R";
	rename -uid "2127993C-41D3-DF3A-0D32-388FACA28E92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.27211982 0.40716237 -0.3952125 
		-0.27211982 0.40716237 -0.3952125 0.27211982 -0.40716237 -0.3952125 -0.27211982 -0.40716237 
		-0.3952125 0.27211982 -0.40716237 0.3952125 -0.27211982 -0.40716237 0.3952125 0.27211982 
		0.40716237 0.3952125 -0.27211982 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thigh_L" -p "MaleBuyerMesh_Seperated";
	rename -uid "174B4EAC-4988-676C-0DE8-95969FD56A27";
	setAttr ".t" -type "double3" 0.149 1.20386533590248 0.072135356035622475 ;
createNode mesh -n "Thigh_LShape" -p "|MaleBuyerMesh_Seperated|Thigh_L";
	rename -uid "8CD08402-40BA-C25B-62CA-56B290752F4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Calf_L" -p "MaleBuyerMesh_Seperated";
	rename -uid "3101B60C-4F52-D7D0-7E0A-35A0DC2E0480";
	setAttr ".t" -type "double3" 0.149 0.45835150496518345 0.072135356035622475 ;
createNode mesh -n "Calf_LShape" -p "|MaleBuyerMesh_Seperated|Calf_L";
	rename -uid "D42F12D8-4CD2-6579-EC3B-63BBBF34A2C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.072315529 0.375 0.072315529 0.125 0.072315529
		 0.375 0.67768443 0.625 0.67768443 0.875 0.072315529 0.375 0 0.625 0 0.625 0.072315529
		 0.375 0.072315529;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.10509172 -0.43157789 0.12057219 0.10509172 -0.43157789 0.12057219
		 -0.10509172 0.31168786 0.12057219 0.10509172 0.31168786 0.12057219 -0.10509172 0.31168786 -0.12057219
		 0.10509172 0.31168786 -0.12057219 -0.10509172 -0.43157789 -0.12057219 0.10509172 -0.43157789 -0.12057219
		 0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 -0.12057219
		 0.10509172 -0.21657924 -0.12057219 -0.10509172 -0.43157789 0.29553995 0.10509172 -0.43157789 0.29553995
		 0.10509172 -0.21657924 0.29553995 -0.10509172 -0.21657924 0.29553995;
	setAttr -s 28 ".ed[0:27]"  0 1 1 2 3 0 4 5 0 6 7 0 0 9 1 1 8 1 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 0 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1
		 0 12 0 1 13 0 12 13 0 8 14 0 13 14 0 9 15 0 14 15 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 22 24 26 -28
		mu 0 4 20 21 22 23
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 0 21 -23 -21
		mu 0 4 0 1 21 20
		f 4 5 23 -25 -22
		mu 0 4 1 14 22 21
		f 4 14 25 -27 -24
		mu 0 4 14 15 23 22
		f 4 -5 20 27 -26
		mu 0 4 15 0 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|MaleBuyerMesh_Seperated|Calf_L";
	rename -uid "5E9EB6AA-4859-8FAF-4E95-50A1E8556D3B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Calf_R" -p "MaleBuyerMesh_Seperated";
	rename -uid "1BF8BD9E-4FE5-B5DB-717E-1B99DBDA41CA";
	setAttr ".t" -type "double3" -0.14934696120577678 0.45835150496518345 0.072135356035622475 ;
createNode mesh -n "Calf_RShape" -p "|MaleBuyerMesh_Seperated|Calf_R";
	rename -uid "6234D774-41E5-4079-0FF1-A4AE77BB52FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.072315529 0.375 0.072315529 0.125 0.072315529
		 0.375 0.67768443 0.625 0.67768443 0.875 0.072315529 0.375 0 0.625 0 0.625 0.072315529
		 0.375 0.072315529;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.10509172 -0.43157789 0.12057219 0.10509172 -0.43157789 0.12057219
		 -0.10509172 0.31168786 0.12057219 0.10509172 0.31168786 0.12057219 -0.10509172 0.31168786 -0.12057219
		 0.10509172 0.31168786 -0.12057219 -0.10509172 -0.43157789 -0.12057219 0.10509172 -0.43157789 -0.12057219
		 0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 -0.12057219
		 0.10509172 -0.21657924 -0.12057219 -0.10509172 -0.43157789 0.29553995 0.10509172 -0.43157789 0.29553995
		 0.10509172 -0.21657924 0.29553995 -0.10509172 -0.21657924 0.29553995;
	setAttr -s 28 ".ed[0:27]"  0 1 1 2 3 0 4 5 0 6 7 0 0 9 1 1 8 1 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 0 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1
		 0 12 0 1 13 0 12 13 0 8 14 0 13 14 0 9 15 0 14 15 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 22 24 26 -28
		mu 0 4 20 21 22 23
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 0 21 -23 -21
		mu 0 4 0 1 21 20
		f 4 5 23 -25 -22
		mu 0 4 1 14 22 21
		f 4 14 25 -27 -24
		mu 0 4 14 15 23 22
		f 4 -5 20 27 -26
		mu 0 4 15 0 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|MaleBuyerMesh_Seperated|Calf_R";
	rename -uid "5F09EE46-4F1E-2A93-9CE5-BBA089CA4C55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thigh_R" -p "MaleBuyerMesh_Seperated";
	rename -uid "D2368368-4398-9442-F124-EFAC4EB984B6";
	setAttr ".t" -type "double3" -0.14934696120577678 1.20386533590248 0.072135356035622475 ;
createNode mesh -n "Thigh_RShape" -p "|MaleBuyerMesh_Seperated|Thigh_R";
	rename -uid "3A40618B-45E2-CC72-1186-9D9D32770502";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BodynHead" -p "MaleBuyerMesh_Seperated";
	rename -uid "9789DE63-423E-15C1-5ACF-9AAD37C0279B";
	setAttr ".t" -type "double3" 0 3.2957235210581746 0 ;
	setAttr ".s" -type "double3" 0.64744338605900154 0.64744338605900154 0.64744338605900154 ;
createNode mesh -n "BodynHeadShape" -p "|MaleBuyerMesh_Seperated|BodynHead";
	rename -uid "BB4CC2F3-449C-465D-083A-77B4B38CFC0A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0.75 0.375 0.75 0.375
		 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[28:31]" -type "float3"  0 0.063220948 0 0 0.063220948 
		0 0 0.063220948 0 0 0.063220948 0;
	setAttr -s 32 ".vt[0:31]"  -0.5 -0.50000018 0.50000006 0.5 -0.50000018 0.50000006
		 -0.5 0.49999967 0.50000006 0.5 0.49999967 0.50000006 -0.5 0.49999967 -0.50000006
		 0.5 0.49999967 -0.50000006 -0.5 -0.50000018 -0.50000006 0.5 -0.50000018 -0.50000006
		 -0.45000002 -0.50000018 -0.43728718 0.45000002 -0.50000018 -0.43728718 0.45000002 -0.50000018 0.43728721
		 -0.45000002 -0.50000018 0.43728721 -0.15318751 -0.50000018 -0.14885986 0.15318751 -0.50000018 -0.14885986
		 0.15318751 -0.50000018 0.1488598 -0.15318751 -0.50000018 0.1488598 -0.15318751 -0.76715517 -0.14885986
		 0.15318751 -0.76715517 -0.14885986 0.15318751 -0.76715517 0.1488598 -0.15318751 -0.76715517 0.1488598
		 -0.47187051 -0.94258761 -0.45853975 0.47187051 -0.94258761 -0.45853975 0.47187051 -0.94258761 0.45853969
		 -0.47187051 -0.94258761 0.45853969 -0.47187051 -2.73906302 -0.45853975 0.47187051 -2.73906302 -0.45853975
		 0.47187051 -2.73906302 0.45853969 -0.47187051 -2.73906302 0.45853969 0.35812768 -0.87997305 -0.34801024
		 -0.35812768 -0.87997305 -0.34801024 -0.35812768 -0.87997305 0.34801018 0.35812768 -0.87997305 0.34801018;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 1 7 9 1 8 9 1 1 10 1 9 10 1 0 11 1 11 10 1 8 11 1
		 8 12 1 9 13 1 12 13 0 10 14 1 13 14 0 11 15 1 15 14 0 12 15 0 12 16 0 13 17 0 16 17 1
		 14 18 0 17 18 1 15 19 0 19 18 1 16 19 1 16 29 0 17 28 0 20 21 1 18 31 0 21 22 1 19 30 0
		 23 22 1 20 23 1 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 28 21 0
		 29 20 0 28 29 1 30 23 0 29 30 1 31 22 0 30 31 1 31 28 1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 46 48 -51 -52
		mu 0 4 30 31 32 33
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 15 -17 -14
		mu 0 4 7 9 16 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 -11 12 19 -18
		mu 0 4 8 6 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25
		f 4 30 37 54 -37
		mu 0 4 22 23 34 35
		f 4 32 39 59 -38
		mu 0 4 23 24 37 34
		f 4 -35 41 58 -40
		mu 0 4 24 25 36 37
		f 4 -36 36 56 -42
		mu 0 4 25 22 35 36
		f 4 38 45 -47 -45
		mu 0 4 26 27 31 30
		f 4 40 47 -49 -46
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 44 51 -50
		mu 0 4 29 26 30 33
		f 4 -55 52 -39 -54
		mu 0 4 35 34 27 26
		f 4 -57 53 43 -56
		mu 0 4 36 35 26 29
		f 4 -59 55 42 -58
		mu 0 4 37 36 29 28
		f 4 -60 57 -41 -53
		mu 0 4 34 37 28 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group2";
	rename -uid "AFA8DF22-4567-4EEB-AC8B-D9AAEDA51BCD";
createNode transform -n "Forearm_L" -p "group2";
	rename -uid "BD151A16-41E5-9729-D9C7-2590BCE537EA";
	setAttr ".t" -type "double3" 1.187 2.5663945179130874 0.041946891135539371 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
createNode mesh -n "polySurfaceShape2" -p "|group2|Forearm_L";
	rename -uid "0F2E0066-4B56-D869-16A7-14B84BDAF691";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.087292358 0.40716237 -0.3952125 
		-0.087292358 0.40716237 -0.3952125 0.087292358 -0.40716237 -0.3952125 -0.087292358 
		-0.40716237 -0.3952125 0.087292358 -0.40716237 0.3952125 -0.087292358 -0.40716237 
		0.3952125 0.087292358 0.40716237 0.3952125 -0.087292358 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform9" -p "|group2|Forearm_L";
	rename -uid "129C9C4B-4D34-8151-35AD-EEB8A6DD6C1A";
	setAttr ".v" no;
createNode mesh -n "Forearm_LShape" -p "transform9";
	rename -uid "F9337C64-42FF-F740-57AA-CBB7C956E8AA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44035536050796509 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.44348198 0.25 0.44348198 0.5 0.44348198 0.75 0.44348198
		 0 0.44348198 1 0.43722874 0.25 0.43722874 0.5 0.43722874 0.75 0.43722874 0 0.43722874
		 1 0.4474487 0.25 0.4474487 0.5 0.4474487 0.75 0.4474487 0 0.4474487 1 0.4335759 0.25
		 0.4335759 0.5 0.4335759 0.75 0.4335759 0 0.4335759 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.04493732 -5.8665988e-009 -3.9110661e-009 ;
	setAttr ".pt[2]" -type "float3" -0.04493732 -0.062961146 -3.9110661e-009 ;
	setAttr ".pt[4]" -type "float3" -0.04493732 -0.062961146 3.9110661e-009 ;
	setAttr ".pt[6]" -type "float3" -0.04493732 -5.8665988e-009 3.9110661e-009 ;
	setAttr ".pt[8]" -type "float3" -0.0013577258 -0.012210348 -0.013782064 ;
	setAttr ".pt[9]" -type "float3" -0.0013577258 -0.012210348 0.013782057 ;
	setAttr ".pt[10]" -type "float3" -0.0013577258 0.012210348 0.013782057 ;
	setAttr ".pt[11]" -type "float3" -0.0013577258 0.012210348 -0.013782064 ;
	setAttr ".pt[12]" -type "float3" 0.0013577283 -0.012210351 -0.013782064 ;
	setAttr ".pt[13]" -type "float3" 0.0013577283 -0.012210351 0.013782057 ;
	setAttr ".pt[14]" -type "float3" 0.0013577283 0.012210351 0.013782057 ;
	setAttr ".pt[15]" -type "float3" 0.0013577283 0.012210351 -0.013782064 ;
	setAttr ".pt[17]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[19]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[20]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[21]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[22]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[23]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.41270763 -0.092837632 0.1047875 0.41270763 -0.092837632 0.1047875
		 -0.41270763 0.092837632 0.1047875 0.41270763 0.092837632 0.1047875 -0.41270763 0.092837632 -0.1047875
		 0.41270763 0.092837632 -0.1047875 -0.41270763 -0.092837632 -0.1047875 0.41270763 -0.092837632 -0.1047875
		 -0.18660335 0.092837624 0.1047875 -0.18660335 0.092837624 -0.1047875 -0.18660335 -0.092837624 -0.1047875
		 -0.18660335 -0.092837624 0.1047875 -0.20724949 0.092837624 0.1047875 -0.20724949 0.092837624 -0.1047875
		 -0.20724949 -0.092837624 -0.1047875 -0.20724949 -0.092837624 0.1047875 -0.17350663 0.092837624 0.1047875
		 -0.17350663 0.092837624 -0.1047875 -0.17350663 -0.092837624 -0.1047875 -0.17350663 -0.092837624 0.1047875
		 -0.21930997 0.092837624 0.1047875 -0.21930997 0.092837624 -0.1047875 -0.21930997 -0.092837624 -0.1047875
		 -0.21930997 -0.092837624 0.1047875;
	setAttr -s 44 ".ed[0:43]"  0 23 0 2 20 0 4 21 0 6 22 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 8 9 1 10 18 0 9 10 1 11 19 0 10 11 1
		 11 8 1 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 5 0
		 16 17 1 18 7 0 17 18 1 19 1 0 18 19 1 19 16 1 20 12 0 21 13 0 20 21 1 22 14 0 21 22 1
		 23 15 0 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 43 -2 -5
		mu 0 4 0 32 29 2
		f 4 1 38 -3 -7
		mu 0 4 2 29 30 4
		f 4 2 40 -4 -9
		mu 0 4 4 30 31 6
		f 4 3 42 -1 -11
		mu 0 4 6 31 33 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 30 -14 -15
		mu 0 4 14 24 25 15
		f 4 -17 13 32 -16
		mu 0 4 16 15 25 26
		f 4 -19 15 34 -18
		mu 0 4 18 16 26 28
		f 4 -20 17 35 -13
		mu 0 4 14 17 27 24
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 21 20 15 16
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 22 17 14
		f 4 28 7 -30 -31
		mu 0 4 24 3 5 25
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -35 31 11 -34
		mu 0 4 28 26 7 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 36 22 -38 -39
		mu 0 4 29 19 20 30
		f 4 -41 37 24 -40
		mu 0 4 31 30 20 21
		f 4 -43 39 26 -42
		mu 0 4 33 31 21 23
		f 4 -44 41 27 -37
		mu 0 4 29 32 22 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Upperarm_L" -p "group2";
	rename -uid "75862E44-43B9-D725-1726-6B84B69F3558";
	setAttr ".t" -type "double3" 0.536 2.5663945179130874 0.041946891135539371 ;
createNode transform -n "transform8" -p "|group2|Upperarm_L";
	rename -uid "4E5671C5-4BC1-534E-C4AE-9C86D3B41F91";
	setAttr ".v" no;
createNode mesh -n "Upperarm_LShape" -p "transform8";
	rename -uid "C264C33C-4280-CFE4-7D2B-3BB9F370DCAF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.27211982 0.40716237 -0.3952125 
		-0.27211982 0.40716237 -0.3952125 0.27211982 -0.40716237 -0.3952125 -0.27211982 -0.40716237 
		-0.3952125 0.27211982 -0.40716237 0.3952125 -0.27211982 -0.40716237 0.3952125 0.27211982 
		0.40716237 0.3952125 -0.27211982 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Forearm_R" -p "group2";
	rename -uid "C3E330BE-436C-FE6E-1251-419AE7E3DCD3";
	setAttr ".t" -type "double3" -1.1869744979221162 2.5663945179130874 0.041946891135539371 ;
createNode mesh -n "polySurfaceShape2" -p "|group2|Forearm_R";
	rename -uid "750B6AFE-491C-B20D-1527-6BB6B1AE39EB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.087292358 0.40716237 -0.3952125 
		-0.087292358 0.40716237 -0.3952125 0.087292358 -0.40716237 -0.3952125 -0.087292358 
		-0.40716237 -0.3952125 0.087292358 -0.40716237 0.3952125 -0.087292358 -0.40716237 
		0.3952125 0.087292358 0.40716237 0.3952125 -0.087292358 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform7" -p "|group2|Forearm_R";
	rename -uid "E4DA644B-4830-1766-F19C-8CAF509F64E5";
	setAttr ".v" no;
createNode mesh -n "Forearm_RShape" -p "transform7";
	rename -uid "3D6B1E32-4E53-CB14-7A34-EDB8A5DB1E9B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.44348198 0.25 0.44348198 0.5 0.44348198 0.75 0.44348198
		 0 0.44348198 1 0.43722874 0.25 0.43722874 0.5 0.43722874 0.75 0.43722874 0 0.43722874
		 1 0.4474487 0.25 0.4474487 0.5 0.4474487 0.75 0.4474487 0 0.4474487 1 0.4335759 0.25
		 0.4335759 0.5 0.4335759 0.75 0.4335759 0 0.4335759 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.04493732 -5.8665988e-009 -3.9110661e-009 ;
	setAttr ".pt[2]" -type "float3" -0.04493732 -0.062961146 -3.9110661e-009 ;
	setAttr ".pt[4]" -type "float3" -0.04493732 -0.062961146 3.9110661e-009 ;
	setAttr ".pt[6]" -type "float3" -0.04493732 -5.8665988e-009 3.9110661e-009 ;
	setAttr ".pt[8]" -type "float3" -0.0013577258 -0.012210348 -0.013782064 ;
	setAttr ".pt[9]" -type "float3" -0.0013577258 -0.012210348 0.013782057 ;
	setAttr ".pt[10]" -type "float3" -0.0013577258 0.012210348 0.013782057 ;
	setAttr ".pt[11]" -type "float3" -0.0013577258 0.012210348 -0.013782064 ;
	setAttr ".pt[12]" -type "float3" 0.0013577283 -0.012210351 -0.013782064 ;
	setAttr ".pt[13]" -type "float3" 0.0013577283 -0.012210351 0.013782057 ;
	setAttr ".pt[14]" -type "float3" 0.0013577283 0.012210351 0.013782057 ;
	setAttr ".pt[15]" -type "float3" 0.0013577283 0.012210351 -0.013782064 ;
	setAttr ".pt[17]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[19]" -type "float3" 0 0 3.9110661e-009 ;
	setAttr ".pt[20]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[21]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[22]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr ".pt[23]" -type "float3" -0.00020432367 -2.2554138e-014 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.41270763 -0.092837632 0.1047875 0.41270763 -0.092837632 0.1047875
		 -0.41270763 0.092837632 0.1047875 0.41270763 0.092837632 0.1047875 -0.41270763 0.092837632 -0.1047875
		 0.41270763 0.092837632 -0.1047875 -0.41270763 -0.092837632 -0.1047875 0.41270763 -0.092837632 -0.1047875
		 -0.18660335 0.092837624 0.1047875 -0.18660335 0.092837624 -0.1047875 -0.18660335 -0.092837624 -0.1047875
		 -0.18660335 -0.092837624 0.1047875 -0.20724949 0.092837624 0.1047875 -0.20724949 0.092837624 -0.1047875
		 -0.20724949 -0.092837624 -0.1047875 -0.20724949 -0.092837624 0.1047875 -0.17350663 0.092837624 0.1047875
		 -0.17350663 0.092837624 -0.1047875 -0.17350663 -0.092837624 -0.1047875 -0.17350663 -0.092837624 0.1047875
		 -0.21930997 0.092837624 0.1047875 -0.21930997 0.092837624 -0.1047875 -0.21930997 -0.092837624 -0.1047875
		 -0.21930997 -0.092837624 0.1047875;
	setAttr -s 44 ".ed[0:43]"  0 23 0 2 20 0 4 21 0 6 22 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 8 9 1 10 18 0 9 10 1 11 19 0 10 11 1
		 11 8 1 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 5 0
		 16 17 1 18 7 0 17 18 1 19 1 0 18 19 1 19 16 1 20 12 0 21 13 0 20 21 1 22 14 0 21 22 1
		 23 15 0 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 43 -2 -5
		mu 0 4 0 32 29 2
		f 4 1 38 -3 -7
		mu 0 4 2 29 30 4
		f 4 2 40 -4 -9
		mu 0 4 4 30 31 6
		f 4 3 42 -1 -11
		mu 0 4 6 31 33 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 30 -14 -15
		mu 0 4 14 24 25 15
		f 4 -17 13 32 -16
		mu 0 4 16 15 25 26
		f 4 -19 15 34 -18
		mu 0 4 18 16 26 28
		f 4 -20 17 35 -13
		mu 0 4 14 17 27 24
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 21 20 15 16
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 22 17 14
		f 4 28 7 -30 -31
		mu 0 4 24 3 5 25
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -35 31 11 -34
		mu 0 4 28 26 7 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 36 22 -38 -39
		mu 0 4 29 19 20 30
		f 4 -41 37 24 -40
		mu 0 4 31 30 20 21
		f 4 -43 39 26 -42
		mu 0 4 33 31 21 23
		f 4 -44 41 27 -37
		mu 0 4 29 32 22 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Upperarm_R" -p "group2";
	rename -uid "3315906F-46B4-8092-CA5F-DD9EA48C0463";
	setAttr ".t" -type "double3" -0.53585528316237219 2.5663945179130874 0.041946891135539371 ;
createNode transform -n "transform6" -p "|group2|Upperarm_R";
	rename -uid "9D4A7029-485B-757F-568B-33B4A983B050";
	setAttr ".v" no;
createNode mesh -n "Upperarm_RShape" -p "transform6";
	rename -uid "5E52F505-403F-A604-1C4E-95B071A1B4BF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.27211982 0.40716237 -0.3952125 
		-0.27211982 0.40716237 -0.3952125 0.27211982 -0.40716237 -0.3952125 -0.27211982 -0.40716237 
		-0.3952125 0.27211982 -0.40716237 0.3952125 -0.27211982 -0.40716237 0.3952125 0.27211982 
		0.40716237 0.3952125 -0.27211982 0.40716237 0.3952125;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thigh_L" -p "group2";
	rename -uid "447214DB-45A2-E7A1-A82B-C4BB201BB48F";
	setAttr ".t" -type "double3" 0.149 1.20386533590248 0.072135356035622475 ;
createNode transform -n "transform5" -p "|group2|Thigh_L";
	rename -uid "6CC55A3A-4B7A-5AB1-08B0-CFBB8B8ACC35";
	setAttr ".v" no;
createNode mesh -n "Thigh_LShape" -p "transform5";
	rename -uid "F86378D8-41E1-ED65-EE97-C88DA48CB6B1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Calf_L" -p "group2";
	rename -uid "FFDCA329-4110-DC80-A6E8-C19FE321AD5A";
	setAttr ".t" -type "double3" 0.149 0.45835150496518345 0.072135356035622475 ;
createNode mesh -n "polySurfaceShape1" -p "|group2|Calf_L";
	rename -uid "CB85C0F9-4D9D-523F-CC2E-26BD3045AF06";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform4" -p "|group2|Calf_L";
	rename -uid "27216E2A-431E-F05E-A2CE-2B86AB992185";
	setAttr ".v" no;
createNode mesh -n "Calf_LShape" -p "transform4";
	rename -uid "24DDE9C1-4F6E-FD78-014A-D7BD1901EB2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.072315529 0.375 0.072315529 0.125 0.072315529
		 0.375 0.67768443 0.625 0.67768443 0.875 0.072315529 0.375 0 0.625 0 0.625 0.072315529
		 0.375 0.072315529;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.10509172 -0.43157789 0.12057219 0.10509172 -0.43157789 0.12057219
		 -0.10509172 0.31168786 0.12057219 0.10509172 0.31168786 0.12057219 -0.10509172 0.31168786 -0.12057219
		 0.10509172 0.31168786 -0.12057219 -0.10509172 -0.43157789 -0.12057219 0.10509172 -0.43157789 -0.12057219
		 0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 -0.12057219
		 0.10509172 -0.21657924 -0.12057219 -0.10509172 -0.43157789 0.29553995 0.10509172 -0.43157789 0.29553995
		 0.10509172 -0.21657924 0.29553995 -0.10509172 -0.21657924 0.29553995;
	setAttr -s 28 ".ed[0:27]"  0 1 1 2 3 0 4 5 0 6 7 0 0 9 1 1 8 1 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 0 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1
		 0 12 0 1 13 0 12 13 0 8 14 0 13 14 0 9 15 0 14 15 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 22 24 26 -28
		mu 0 4 20 21 22 23
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 0 21 -23 -21
		mu 0 4 0 1 21 20
		f 4 5 23 -25 -22
		mu 0 4 1 14 22 21
		f 4 14 25 -27 -24
		mu 0 4 14 15 23 22
		f 4 -5 20 27 -26
		mu 0 4 15 0 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Calf_R" -p "group2";
	rename -uid "06C67C99-422F-9C50-53D3-7284725DFFD3";
	setAttr ".t" -type "double3" -0.14934696120577678 0.45835150496518345 0.072135356035622475 ;
createNode mesh -n "polySurfaceShape1" -p "|group2|Calf_R";
	rename -uid "1017CF05-4ABE-3493-0856-B3B50CC80A57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "|group2|Calf_R";
	rename -uid "06063120-434E-C36E-1835-6D921051E514";
	setAttr ".v" no;
createNode mesh -n "Calf_RShape" -p "transform3";
	rename -uid "C710EB02-4698-4803-D5A3-D582EFE2E591";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.072315529 0.375 0.072315529 0.125 0.072315529
		 0.375 0.67768443 0.625 0.67768443 0.875 0.072315529 0.375 0 0.625 0 0.625 0.072315529
		 0.375 0.072315529;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.10509172 -0.43157789 0.12057219 0.10509172 -0.43157789 0.12057219
		 -0.10509172 0.31168786 0.12057219 0.10509172 0.31168786 0.12057219 -0.10509172 0.31168786 -0.12057219
		 0.10509172 0.31168786 -0.12057219 -0.10509172 -0.43157789 -0.12057219 0.10509172 -0.43157789 -0.12057219
		 0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 0.12057219 -0.10509172 -0.21657924 -0.12057219
		 0.10509172 -0.21657924 -0.12057219 -0.10509172 -0.43157789 0.29553995 0.10509172 -0.43157789 0.29553995
		 0.10509172 -0.21657924 0.29553995 -0.10509172 -0.21657924 0.29553995;
	setAttr -s 28 ".ed[0:27]"  0 1 1 2 3 0 4 5 0 6 7 0 0 9 1 1 8 1 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 0 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1
		 0 12 0 1 13 0 12 13 0 8 14 0 13 14 0 9 15 0 14 15 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 22 24 26 -28
		mu 0 4 20 21 22 23
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 0 21 -23 -21
		mu 0 4 0 1 21 20
		f 4 5 23 -25 -22
		mu 0 4 1 14 22 21
		f 4 14 25 -27 -24
		mu 0 4 14 15 23 22
		f 4 -5 20 27 -26
		mu 0 4 15 0 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thigh_R" -p "group2";
	rename -uid "D0727F60-4A16-102F-86A9-93A2DFFDF0D0";
	setAttr ".t" -type "double3" -0.14934696120577678 1.20386533590248 0.072135356035622475 ;
createNode transform -n "transform2" -p "|group2|Thigh_R";
	rename -uid "DD20B437-43E2-0B03-5F47-18AA7A20FC04";
	setAttr ".v" no;
createNode mesh -n "Thigh_RShape" -p "transform2";
	rename -uid "0FF6C65A-43BF-70AC-6E67-099FFE3B7D31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.39490828 0.068422094 -0.37942782 
		-0.39490828 0.068422094 -0.37942782 0.39490828 -0.18831216 -0.37942782 -0.39490828 
		-0.18831216 -0.37942782 0.39490828 -0.18831216 0.37942782 -0.39490828 -0.18831216 
		0.37942782 0.39490828 0.068422094 0.37942782 -0.39490828 0.068422094 0.37942782;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BodynHead" -p "group2";
	rename -uid "D02E7AE6-4D1E-FA42-6BFF-AD9501ABED73";
	setAttr ".t" -type "double3" 0 3.2957235210581746 0 ;
	setAttr ".s" -type "double3" 0.64744338605900154 0.64744338605900154 0.64744338605900154 ;
createNode transform -n "transform1" -p "|group2|BodynHead";
	rename -uid "6B654DED-4DE0-01F1-180C-E2B74965C3EA";
	setAttr ".v" no;
createNode mesh -n "BodynHeadShape" -p "transform1";
	rename -uid "B4561FB7-444E-C0E6-2809-29B27AF457DB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0.75 0.375 0.75 0.375
		 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[28:31]" -type "float3"  0 0.063220948 0 0 0.063220948 
		0 0 0.063220948 0 0 0.063220948 0;
	setAttr -s 32 ".vt[0:31]"  -0.5 -0.50000018 0.50000006 0.5 -0.50000018 0.50000006
		 -0.5 0.49999967 0.50000006 0.5 0.49999967 0.50000006 -0.5 0.49999967 -0.50000006
		 0.5 0.49999967 -0.50000006 -0.5 -0.50000018 -0.50000006 0.5 -0.50000018 -0.50000006
		 -0.45000002 -0.50000018 -0.43728718 0.45000002 -0.50000018 -0.43728718 0.45000002 -0.50000018 0.43728721
		 -0.45000002 -0.50000018 0.43728721 -0.15318751 -0.50000018 -0.14885986 0.15318751 -0.50000018 -0.14885986
		 0.15318751 -0.50000018 0.1488598 -0.15318751 -0.50000018 0.1488598 -0.15318751 -0.76715517 -0.14885986
		 0.15318751 -0.76715517 -0.14885986 0.15318751 -0.76715517 0.1488598 -0.15318751 -0.76715517 0.1488598
		 -0.47187051 -0.94258761 -0.45853975 0.47187051 -0.94258761 -0.45853975 0.47187051 -0.94258761 0.45853969
		 -0.47187051 -0.94258761 0.45853969 -0.47187051 -2.73906302 -0.45853975 0.47187051 -2.73906302 -0.45853975
		 0.47187051 -2.73906302 0.45853969 -0.47187051 -2.73906302 0.45853969 0.35812768 -0.87997305 -0.34801024
		 -0.35812768 -0.87997305 -0.34801024 -0.35812768 -0.87997305 0.34801018 0.35812768 -0.87997305 0.34801018;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 1 7 9 1 8 9 1 1 10 1 9 10 1 0 11 1 11 10 1 8 11 1
		 8 12 1 9 13 1 12 13 0 10 14 1 13 14 0 11 15 1 15 14 0 12 15 0 12 16 0 13 17 0 16 17 1
		 14 18 0 17 18 1 15 19 0 19 18 1 16 19 1 16 29 0 17 28 0 20 21 1 18 31 0 21 22 1 19 30 0
		 23 22 1 20 23 1 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 28 21 0
		 29 20 0 28 29 1 30 23 0 29 30 1 31 22 0 30 31 1 31 28 1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 46 48 -51 -52
		mu 0 4 30 31 32 33
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 15 -17 -14
		mu 0 4 7 9 16 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 -11 12 19 -18
		mu 0 4 8 6 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25
		f 4 30 37 54 -37
		mu 0 4 22 23 34 35
		f 4 32 39 59 -38
		mu 0 4 23 24 37 34
		f 4 -35 41 58 -40
		mu 0 4 24 25 36 37
		f 4 -36 36 56 -42
		mu 0 4 25 22 35 36
		f 4 38 45 -47 -45
		mu 0 4 26 27 31 30
		f 4 40 47 -49 -46
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 44 51 -50
		mu 0 4 29 26 30 33
		f 4 -55 52 -39 -54
		mu 0 4 35 34 27 26
		f 4 -57 53 43 -56
		mu 0 4 36 35 26 29
		f 4 -59 55 42 -58
		mu 0 4 37 36 29 28
		f 4 -60 57 -41 -53
		mu 0 4 34 37 28 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MaleBuyerMesh_Combined";
	rename -uid "34042953-4572-B088-533A-80938EA547B6";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.275103894189313e-005 1.8231093075534501 0.021976787336182413 ;
	setAttr ".sp" -type "double3" 1.275103894189313e-005 1.8231093075534501 0.021976787336182413 ;
createNode mesh -n "MaleBuyerMesh_CombinedShape" -p "MaleBuyerMesh_Combined";
	rename -uid "11F8D3DF-4CCD-4E3C-1B1D-39A63828A340";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51297052204608917 0.65430206060409546 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "MaleBuyerMesh_CombinedShapeOrig" -p "MaleBuyerMesh_Combined";
	rename -uid "4A9B02E0-44ED-BC35-CFE0-6B8292DE3C07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "QuickRigCharacter1_Guides";
	rename -uid "9F445ECD-4A8C-E39E-E784-0F890089D8D0";
	addAttr -ci true -sn "minCorner" -ln "minCorner" -at "compound" -nc 3;
	addAttr -ci true -sn "minCornerX" -ln "minCornerX" -at "doubleLinear" -p "minCorner";
	addAttr -ci true -sn "minCornerY" -ln "minCornerY" -at "doubleLinear" -p "minCorner";
	addAttr -ci true -sn "minCornerZ" -ln "minCornerZ" -at "doubleLinear" -p "minCorner";
	addAttr -ci true -sn "maxCorner" -ln "maxCorner" -at "compound" -nc 3;
	addAttr -ci true -sn "maxCornerX" -ln "maxCornerX" -at "doubleLinear" -p "maxCorner";
	addAttr -ci true -sn "maxCornerY" -ln "maxCornerY" -at "doubleLinear" -p "maxCorner";
	addAttr -ci true -sn "maxCornerZ" -ln "maxCornerZ" -at "doubleLinear" -p "maxCorner";
	addAttr -ci true -sn "guides" -ln "guides" -at "compound" -nc 23;
	addAttr -s false -ci true -sn "LeftToeBase" -ln "LeftToeBase" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Spine1" -ln "Spine1" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Spine2" -ln "Spine2" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftHand" -ln "LeftHand" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightToeBase" -ln "RightToeBase" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Head" -ln "Head" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightHand" -ln "RightHand" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftArm" -ln "LeftArm" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftLeg" -ln "LeftLeg" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftForeArm" -ln "LeftForeArm" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightForeArm" -ln "RightForeArm" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Neck" -ln "Neck" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Spine" -ln "Spine" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftUpLeg" -ln "LeftUpLeg" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftFoot" -ln "LeftFoot" -at "message" -p "guides";
	addAttr -s false -ci true -sn "LeftShoulder" -ln "LeftShoulder" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Hips" -ln "Hips" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightFoot" -ln "RightFoot" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightArm" -ln "RightArm" -at "message" -p "guides";
	addAttr -s false -ci true -sn "Reference" -ln "Reference" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightUpLeg" -ln "RightUpLeg" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightLeg" -ln "RightLeg" -at "message" -p "guides";
	addAttr -s false -ci true -sn "RightShoulder" -ln "RightShoulder" -at "message" 
		-p "guides";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".dh" yes;
	setAttr ".ds" 2;
	setAttr ".minCornerX" -1.6446194648742676;
	setAttr ".minCornerY" 0.026773594319820404;
	setAttr ".minCornerZ" -0.32372176647186279;
	setAttr ".maxCornerX" 1.6446449756622314;
	setAttr ".maxCornerY" 3.6194450855255127;
	setAttr ".maxCornerZ" 0.36767533421516418;
createNode joint -n "Head" -p "QuickRigCharacter1_Guides";
	rename -uid "71EDF3EA-4F24-B61B-1174-D38D87EA8645";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 3.0045315623283386 0.004676474774338836 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Hips" -p "QuickRigCharacter1_Guides";
	rename -uid "F6AC0170-40C5-0775-4B2D-B9ADA2DACE73";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 1.7611188888549805 0.07160031795501709 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftArm" -p "QuickRigCharacter1_Guides";
	rename -uid "7DFC7496-4F24-BA90-0CF6-E1ADAA107D58";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.38714677095413208 2.5920565128326416 0.017685890197753906 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftFoot" -p "QuickRigCharacter1_Guides";
	rename -uid "772AE633-4DF4-5600-C0AA-2392440AB06D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.14786726142274342 0.31002399921417229 0.061166794076816931 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftForeArm" -p "QuickRigCharacter1_Guides";
	rename -uid "FA0C43ED-4D6F-E236-6DF0-D2859B203DAD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.97686260938644409 2.5662589073181152 0.016829729080200195 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftHand" -p "QuickRigCharacter1_Guides";
	rename -uid "F1712EC2-488E-F4DE-2046-7DA4E15CC322";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.3166086196899411 2.549895429611206 0.029345703124999997 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftLeg" -p "QuickRigCharacter1_Guides";
	rename -uid "3A3444A4-40EB-0AFE-C279-A9A0A97EA4DF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.17508643865585327 1.0528027415275574 0.084674596786499023 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftShoulder" -p "QuickRigCharacter1_Guides";
	rename -uid "0C18A453-4A5E-832F-850D-EFB3034402F0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.15486636161804196 2.5920565128326416 0.017685890197753906 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftToeBase" -p "QuickRigCharacter1_Guides";
	rename -uid "9C313678-47D6-4AEF-0D5D-28ACF14D0BE2";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.14914338588714598 0.13814584016799927 0.17912790775299073 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "LeftUpLeg" -p "QuickRigCharacter1_Guides";
	rename -uid "DE2825A5-48F3-E99D-2F3A-D1B304DCB496";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 0.14426887035369873 1.7607591152191162 0.070707261562347412 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Neck" -p "QuickRigCharacter1_Guides";
	rename -uid "825918B3-401A-D62E-F5AC-E39B9B766976";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 2.5486150979995728 0.023786187171936035 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Reference" -p "QuickRigCharacter1_Guides";
	rename -uid "753A2149-4416-65C6-14C4-8FAC7A5BCB13";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 0.026773594319820404 0.021976783871650696 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightArm" -p "QuickRigCharacter1_Guides";
	rename -uid "39F55324-4DD4-3369-72DF-ED8BE4E937EB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.38712126016616821 2.5920565128326416 0.017685890197753906 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightFoot" -p "QuickRigCharacter1_Guides";
	rename -uid "E4C2D012-4A83-869C-CD7D-D4A3421E6F5E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.14784175063477956 0.31002399921417229 0.061166794076816931 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightForeArm" -p "QuickRigCharacter1_Guides";
	rename -uid "BC99F9D3-4C95-0BBD-C71C-C380887E9A91";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.97683709859848022 2.5662589073181152 0.016829729080200195 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightHand" -p "QuickRigCharacter1_Guides";
	rename -uid "61AFC963-43BF-9FE6-5378-1FBCE186A567";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -1.3165831089019773 2.549895429611206 0.029345703124999997 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightLeg" -p "QuickRigCharacter1_Guides";
	rename -uid "09CCA125-4234-E29E-8D1E-56BF28268012";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.1750609278678894 1.0528027415275574 0.084674596786499023 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightShoulder" -p "QuickRigCharacter1_Guides";
	rename -uid "13B4BA62-4529-35AE-8DE4-C582815495E8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.15484085083007809 2.5920565128326416 0.017685890197753906 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightToeBase" -p "QuickRigCharacter1_Guides";
	rename -uid "53D093F3-4C43-9DDD-505F-0BA1CCD11F2A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.14911787509918215 0.13814584016799927 0.17912790775299073 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "RightUpLeg" -p "QuickRigCharacter1_Guides";
	rename -uid "4F456BAB-46BD-3D25-EBD2-6B95AC179605";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" -0.14424335956573489 1.7607591152191162 0.070707261562347412 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Spine" -p "QuickRigCharacter1_Guides";
	rename -uid "8FADEB1B-4B77-BFB2-A713-FC9EC6374C2D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 1.9089172294617953 0.057262626488811801 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Spine1" -p "QuickRigCharacter1_Guides";
	rename -uid "BF5EAB60-4DE0-0EA8-84A4-43AA8551513A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 2.0569394709718578 0.047343874115370783 ;
	setAttr ".radi" 1.7994714136685686;
createNode joint -n "Spine2" -p "QuickRigCharacter1_Guides";
	rename -uid "3B3B3D7F-4A4A-4EEA-0D45-B682BC3F8637";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.627451 0.23529412 0 ;
	setAttr ".t" -type "double3" 1.2755393981933594e-005 2.2049617124819205 0.037425121741929766 ;
	setAttr ".radi" 1.7994714136685686;
createNode transform -n "QuickRigCharacter1_Reference";
	rename -uid "3D7AA831-45A2-C891-91E8-5180A0AFD6AA";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.2755393981933594e-005 0.026773594319820404 0.021976783871650696 ;
createNode locator -n "QuickRigCharacter1_ReferenceShape" -p "QuickRigCharacter1_Reference";
	rename -uid "B932843A-45B9-16E3-6237-9A909A934271";
	setAttr -k off ".v";
createNode joint -n "QuickRigCharacter1_Hips" -p "QuickRigCharacter1_Reference";
	rename -uid "AB4B2E88-4381-E16F-9F52-54B6F0B29E2B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90 5.540838581835744 90 ;
	setAttr ".bps" -type "matrix" 1.110222975189259e-016 0.99532758544566713 -0.09655521008782586 0
		 -1.1102229719945172e-016 0.096555209809981696 0.99532758258154463 0 1.0000000000000004 -1.110223024625157e-016 1.110223024625157e-016 0
		 0.00038862228393554688 53.678905487060547 2.1823775768280029 1;
	setAttr ".ds" 2;
	setAttr ".typ" 1;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftUpLeg" -p "QuickRigCharacter1_Hips";
	rename -uid "CE7E5166-4FC2-22AD-3465-2EAC4431EEC6";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -6.8580710319057077e-015 -4.7708320221952736e-015 
		-174.45916141816426 ;
	setAttr ".bps" -type "matrix" 0.0026368498802185067 -0.9991080760955815 0.042148381471633911 0
		 -0.0031584498909744629 -0.042156634019761559 -0.99910610281141055 0 0.99999171405430809 0.0025013690164435941 -0.0032667931956580926 0
		 4.3973150253295898 53.667938232421875 2.1551573276519784 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftLeg" -p "QuickRigCharacter1_LeftUpLeg";
	rename -uid "29F695C6-45AF-AC0F-EFC7-57BBA0A632C3";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -6.9455861831593998e-015 -6.3611093629270351e-015 
		5.5659706925611559e-015 ;
	setAttr ".bps" -type "matrix" 0.0023247230429952292 -0.99859178299173035 -0.053000834523124644 0
		 -0.0035536288991559486 0.052992393905392864 -0.99858862212598676 0 0.99999106151495942 0.0025097873472686855 -0.0034254320744107293 0
		 4.4542789459228516 32.084075927734382 3.0656890869140616 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftFoot" -p "QuickRigCharacter1_LeftLeg";
	rename -uid "12F43C35-43E8-BAAD-BF10-D090724C6F83";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -3.9267137486842593e-015 -6.5527104808138976e-015 
		-34.463630065939107 ;
	setAttr ".bps" -type "matrix" 0.0061216354370117569 -0.8244855403900142 0.56585013866424561 0
		 -1.4826927237625992e-007 -0.56586066270993285 -0.82450087309959963 0 0.99998134187874144 0.005047209660060583 -0.0034641147908630486 0
		 4.5069947242736834 9.4495449066162216 1.8643478155136115 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftToeBase" -p "QuickRigCharacter1_LeftFoot";
	rename -uid "DFD34E00-40A5-7322-2EB3-5099CA3BE078";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".bps" -type "matrix" 0.0061216354370117595 -0.82448554039001454 0.56585013866424583 0
		 -1.4826927237625989e-007 -0.56586066270993274 -0.82450087309959952 0 0.99998134187874099 0.0050472096600605804 -0.0034641147908630468 0
		 4.5458908081054687 4.2106962203979492 5.459805965423584 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightUpLeg" -p "QuickRigCharacter1_Hips";
	rename -uid "4A3C84E0-4E3E-233E-7AD1-0DB11D379745";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.9574011378761194e-015 6.3611774239424943e-015 5.5402780864123988 ;
	setAttr ".bps" -type "matrix" 0.0026375949382781969 0.99910879135131825 -0.04213067889213562 0
		 -0.0031654534394687526 0.042138952858709375 0.99910683099301689 0 0.9999916553150886 -0.0025018761533172128 0.0032737775026412683 0
		 -4.3965377807617187 53.667938232421875 2.1551573276519775 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightLeg" -p "QuickRigCharacter1_RightUpLeg";
	rename -uid "23CC0E7E-4994-A068-52DE-858BBC043531";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.9455853023730697e-015 4.7708320221952752e-015 0.0005604954233404064 ;
	setAttr ".bps" -type "matrix" 0.0023249181030986481 0.99859273543253835 0.052983640190845116 0
		 -0.0035399497021942478 -0.05297522760873824 0.99858951462266599 0 0.9999910006999565 -0.0025091981242213205 0.0034118048041652783 0
		 -4.4535126686096191 32.084014892578118 3.0653071403503418 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightFoot" -p "QuickRigCharacter1_RightLeg";
	rename -uid "8181C1E0-4842-4CA6-6485-CD92F27FA3B2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 3.926713764161543e-015 -0.0027462350539982786 -34.463629970047819 ;
	setAttr ".bps" -type "matrix" 0.0061214268207550188 0.8244854211807251 -0.56585013866424561 0
		 -2.9714178647558681e-008 0.56586076626249382 0.82450090605441551 0 0.99998128406455422 -0.0050471047133278865 0.0034638994731738698 0
		 -4.5062170028686515 9.4495010375976598 1.8643583059310913 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightToeBase" -p "QuickRigCharacter1_RightFoot";
	rename -uid "DA8632DD-4D1C-E2AB-B701-3EB9B41AFB04";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 1.4622811973002396e-006 0 ;
	setAttr ".bps" -type "matrix" 0.0061214012996109301 0.82448542130953506 -0.56585013875264967 0
		 -2.9714178647558674e-008 0.56586076626249371 0.82450090605441528 0 0.99998128422078247 -0.0050470836711232637 0.0034638850317609622 0
		 -4.5451130867004403 4.2106471061706543 5.4598212242126465 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_Spine" -p "QuickRigCharacter1_Hips";
	rename -uid "C30DD2FB-4F29-3E5E-78E8-379687D626BB";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.5478039446866066e-015 6.168725766563357e-015 1.7072637027441024 ;
	setAttr ".bps" -type "matrix" 1.0766532654480501e-016 0.99776238018174312 -0.06685858743657154 0
		 -1.1428069260813553e-016 0.06685858730335309 0.99776237819366109 0 1.0000000000000004 -1.110223024625157e-016 1.110223024625157e-016 0
		 0.00038862228393554688 58.183795928955085 1.7453649044036881 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_Spine1" -p "QuickRigCharacter1_Spine";
	rename -uid "2938B9DC-4FA9-90D7-648B-97ABCEA1DAB8";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.5478037263710061e-015 6.1687743921817876e-015 3.9756933518293952e-015 ;
	setAttr ".bps" -type "matrix" 1.0766532654480501e-016 0.99776238018174312 -0.06685858743657154 0
		 -1.1428069260813553e-016 0.06685858730335309 0.99776237819366109 0 1.0000000000000004 -1.110223024625157e-016 1.110223024625157e-016 0
		 0.00038862228393554688 62.695514678955078 1.4430413246154778 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_Spine2" -p "QuickRigCharacter1_Spine1";
	rename -uid "D08E7645-46AA-03D1-B794-37A2820254DD";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.7133957733615893e-015 5.9881371223472975e-015 1.560809621377993 ;
	setAttr ".bps" -type "matrix" 1.0451262741867251e-016 0.99921339912504015 -0.039656836645444379 0
		 -1.1717088380592699e-016 0.0396568366454444 0.99921339912504048 0 1 -1.1102230246251565e-016 1.1102230246251565e-016 0
		 0.00038862228393554682 67.207229614257798 1.1407177448272718 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftShoulder" -p "QuickRigCharacter1_Spine2";
	rename -uid "A2CA9C7B-487D-76B1-361A-C182CB314321";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -87.727234742286356 -90 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 1.0864623635394919e-016 4.6749232350904473e-017 0
		 -6.6749670748679472e-017 0.99999999999999978 -1.8488927466117464e-032 0 1.0082125754787385e-016 1.3183898417423731e-016 0.99999999999999978 0
		 4.7203269004821768 79.005882263183608 0.53906595706939686 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftArm" -p "QuickRigCharacter1_LeftShoulder";
	rename -uid "4F42330E-4B95-E4D4-60D1-CCA84A688870";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90 2.3543531768944904e-015 6.2820632370989865e-014 ;
	setAttr ".bps" -type "matrix" 0.99897176027297985 -0.045311652123927945 -0.0015629548579454207 0
		 0.0015484768587649457 -0.00035461419608986305 0.99999868869422126 0 -0.045312145255083404 -0.99897283309342577 -0.00028408551229755339 0
		 11.800233840942383 79.005882263183594 0.53906595706939708 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftForeArm" -p "QuickRigCharacter1_LeftArm";
	rename -uid "91E70AB5-41D3-0F44-C862-44BB7A9FE0A7";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 1.8685758753598164e-014 9.0760948253656407e-031 -2.7829853462805772e-015 ;
	setAttr ".bps" -type "matrix" 0.99828994274139393 -0.045287944376468152 0.036966953426599503 0
		 -0.036941845894805737 0.0013914521800698239 0.99931657352751624 0 -0.045308422882622219 -0.99897313030742341 -0.00028394749310269268 0
		 29.773466110229496 78.190650939941406 0.5109405517578125 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_LeftHand" -p "QuickRigCharacter1_LeftForeArm";
	rename -uid "DAFD88CF-4D42-52AD-1523-3CBF66BD4FAD";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 0.99828998522832579 -0.045287945539984033 0.036964267385019955 0
		 -0.036939163237019054 0.0013913304912519806 0.9993166329252442 0 -0.045308419451262169 -0.99897305465181085 -0.00028394747159838903 0
		 40.130233764648438 77.720809936523438 0.89445257186889648 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightShoulder" -p "QuickRigCharacter1_Spine2";
	rename -uid "A0AC144B-454F-68A1-97A2-CD870B26331C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 92.272765257713644 -90 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 1.0864623635394919e-016 4.6749232350904473e-017 0
		 6.6749670748679447e-017 -0.99999999999999978 2.2204460492503131e-016 0 1.2122334737715744e-016 -1.3183898417423734e-016 -0.99999999999999978 0
		 -4.7195491790771493 79.005882263183608 0.53906595706939664 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightArm" -p "QuickRigCharacter1_RightShoulder";
	rename -uid "51C5C561-4619-DA45-5104-6C8C963F703C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90.000000000000014 -2.782985346280578e-015 -2.896626008095419e-031 ;
	setAttr ".bps" -type "matrix" 0.99897176027297974 0.045311741530897544 0.0015607066452503248 0
		 0.0015462168084305762 0.00035482557727280672 -0.99999874830871516 0 -0.04531223452041639 0.99897283326877562 0.00028439892958096824 0
		 -11.799455642700194 79.005882263183565 0.53906595706939686 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightForeArm" -p "QuickRigCharacter1_RightArm";
	rename -uid "82C80C90-4447-44DC-800A-4C9A873CF580";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -6.7586786981099719e-015 3.0483540370908899e-031 2.5842006786891076e-015 ;
	setAttr ".bps" -type "matrix" 0.99828994274139404 0.045287422835826048 -0.036963175982236855 0
		 -0.036938087077647036 -0.0013909714603581235 -0.99931657290893494 0 -0.04530788866050009 0.9989730720238883 0.00028423795971623824 0
		 -29.772710800170898 78.190658569335966 0.51097112894058216 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_RightHand" -p "QuickRigCharacter1_RightForeArm";
	rename -uid "0CAD5042-47C1-E97F-46AB-97A7AD0B3CF5";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 0.99828999220787018 0.045287425079872719 -0.036963177813807008 0
		 -0.036938086585498145 -0.0013909714418253538 -0.99931655959442456 0 -0.045307886110163717 0.99897301579267916 0.00028423794371676376 0
		 -40.129447937011719 77.7208251953125 0.89444386959075928 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_Neck" -p "QuickRigCharacter1_Spine2";
	rename -uid "618B2AE2-4A51-A7BB-36CD-169749418C59";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.7000694862208365e-015 6.0030475610749808e-015 -0.12737913080294608 ;
	setAttr ".bps" -type "matrix" 1.0477285244429628e-016 0.99912267898840867 -0.041878169663153927 0
		 -1.1693823310370865e-016 0.041878169558620441 0.99912267649446529 0 0.999999940395357 -1.1102229584507095e-016 1.1102229584507095e-016 0
		 0.00038862228393554688 77.681785583496094 0.72500300407409701 1;
	setAttr ".ds" 2;
	setAttr ".typ" 7;
	setAttr ".radi" 1.5000000480000004;
createNode joint -n "QuickRigCharacter1_Head" -p "QuickRigCharacter1_Neck";
	rename -uid "E5397F86-4FAA-B251-1A34-3AB96D953A7F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 1.0477285244429627e-016 0.99912267898840856 -0.04187816966315392 0
		 -1.1693823310370865e-016 0.041878169558620441 0.99912267649446529 0 0.999999940395357 -1.1102229584507095e-016 1.1102229584507095e-016 0
		 0.00038862228393554682 91.578125 0.14253896474838212 1;
	setAttr ".ds" 2;
	setAttr ".typ" 8;
	setAttr ".radi" 1.5000000480000004;
createNode transform -n "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "90A40266-4233-642B-FAD7-15B0DA5FD528";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.2755393981933594e-005 0.026773594319820404 0.021976783871650696 ;
	setAttr -l on ".ra";
createNode locator -n "QuickRigCharacter1_Ctrl_ReferenceShape" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "FC38DE2B-47A8-1B35-AEF0-89AA7C5A3A51";
	setAttr -k off ".v";
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_HipsEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "274AABDD-4B2F-EF71-F553-C783FA0631BC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.3194697990309533e-009 1.7339855334733727 0.048730477416922102 ;
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 8.7459734509541391;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 2;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftAnkleEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "B76BC93E-43D5-46A5-C229-49A044A652ED";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0.147854509941862 0.28325103260478945 0.0391895065079211 ;
	setAttr ".r" -type "double3" -1.0832826914742161e-005 -0.35073586614134844 0.0015475049552182935 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 124.46363061984204 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 1;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" -90 -34.463630619842043 -90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightAnkleEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "399CC6DC-43F2-AA4F-4345-A68ED771C8CD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -0.14785452057996135 0.28324990621780161 0.039189842859591088 ;
	setAttr ".r" -type "double3" 4.607470718757512e-006 0.34799061351749194 0.0015447107873051973 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -55.536369380397673 -89.997256778997041 180 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 2;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" -89.99811719913788 -34.463630574769461 -90.003327191090833 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftWristEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "9CD6EB9E-4BDA-4B6D-2604-80944C124FCC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 1.3165957136104112 2.5231217448049641 0.0073689274352992306 ;
	setAttr ".r" -type "double3" -0.079795408688561983 -2.5956749515575708 2.120555726234159 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 3;
	setAttr ".radi" 2.9153244836513799;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightWristEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "BF9A9282-4452-5D7E-333D-FF9DBAA7BE7D";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -1.3165954426517636 2.5231217448049641 0.0073689196131673709 ;
	setAttr ".r" -type "double3" 0.079789602710701804 2.59567061226354 2.1204730954374367 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr ".ei" 4;
	setAttr ".radi" 2.9153244836513799;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftKneeEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "17518879-49F8-0AF9-812B-FDB6C7AF76C2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.14612491143344269 1.0258526925848226 0.0786109351971018 ;
	setAttr ".r" -type "double3" -0.20360747003906149 -0.13325778661693727 3.0387250520038953 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 5;
	setAttr ".radi" 1.1661297934605519;
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 5.8306489673027597 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightKneeEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "3DD9AEBE-4354-76DB-87D8-678A98EB1B4E";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.14612536011092619 1.0258529428930421 0.078594790316942179 ;
	setAttr ".r" -type "double3" 0.20282455636314956 0.13322376708997677 3.0374469275298397 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 6;
	setAttr ".radi" 1.1661297934605519;
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 5.8306489673027597 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftElbowEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "82C1C45A-4394-9603-971F-2197766E951C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.97680706145569396 2.5385362255800112 -0.0052135035669396857 ;
	setAttr ".r" -type "double3" -0.07976741914466183 -2.5956936820767242 2.1207028389227269 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 7;
	setAttr ".radi" 1.1661297934605519;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -5.8306489673027597 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightElbowEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "F8FB9870-483A-AB4F-F043-E5AF68493C07";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.97680722853643065 2.5385364758882307 -0.0052121757600564018 ;
	setAttr ".r" -type "double3" -0.079795927372313114 -2.5956693304066456 2.1204868950611235 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 8;
	setAttr ".radi" 1.1661297934605519;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -5.8306489673027597 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_ChestOriginEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "04988190-455A-6A1E-0BA4-6DAEAA017F3A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 1.8821435943832547 0.035285844108251134 ;
	setAttr ".r" -type "double3" 0 0 1.9083328088781101e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -86.166425728878238 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 9;
	setAttr ".radi" 1.1661297934605519;
	setAttr -l on ".jo" -type "double3" 90 3.8335742711217855 89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_ChestEndEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "CB77B1AE-4D20-0777-B363-A98055ED28AD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 2.5026620612565302e-009 2.5652829098106995 -0.0042908930090155813 ;
	setAttr ".r" -type "double3" -4.4527765540489235e-014 -3.8166656177562201e-014 6.3611093629270477e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -87.727234828815298 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 10;
	setAttr ".radi" 8.7459734509541391;
	setAttr -l on ".jo" -type "double3" 90.000000000000028 2.2727651711847203 90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftFootEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "D4AD5A35-44C2-3DEF-DAFD-DE96A436921C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.14913062817781303 0.11137273229091499 0.15715077100932756 ;
	setAttr ".r" -type "double3" 0.28917165622475055 -0.1984835515107331 0.0010465970776608192 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 11;
	setAttr ".radi" 3.4983893803816555;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightFootEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "7E3B7360-43FA-0B35-0544-3F8B6CBC4ADA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.14913062317164863 0.11137152768260851 0.15715128727003033 ;
	setAttr ".r" -type "double3" -0.28691168901720571 0.19692500768846077 0.0010516388188887853 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 12;
	setAttr ".radi" 3.4983893803816555;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftShoulderEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "E536B5DE-4DCA-5E15-2C6D-B68B110150A0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0.38713402416449522 2.5652829103778041 -0.0042908928916836021 ;
	setAttr ".r" -type "double3" 0.020345361494242074 2.5970399494074816 0.089659027161471491 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 13;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightShoulderEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "30C6EBCE-4345-1449-0054-FDB2DCDB1224";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -0.38713400351406707 2.5652829103778041 -0.0042908928916836021 ;
	setAttr ".r" -type "double3" 0.020345274669896978 2.5970210000508254 0.089561682466902118 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 14;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_HeadEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "5919B991-4C9D-81DF-01C5-D7A4B8FF578C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 2.9777580652180617 -0.017300309256462289 ;
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 15;
	setAttr ".radi" 5.8306489673027597;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_LeftHipEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "A7848B13-4B31-A78C-F031-C49ABBF4E346";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.14425611026643767 1.7339855340404773 0.04873047753425408 ;
	setAttr ".r" -type "double3" -0.18095773643706195 -0.15108751635596898 -2.4162400414633081 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 16;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter1_Ctrl_RightHipEffector" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "5C18871E-48DA-A192-5325-60AE63FCBDD6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.14425612090453702 1.7339855340404773 0.04873047753425408 ;
	setAttr ".r" -type "double3" 0.18136695304144826 0.15111066358229994 -2.4143735311025116 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560246992293 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 17;
	setAttr ".radi" 4.6645191738422076;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 -0.00056024699229033251 
		-90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Hips" -p "QuickRigCharacter1_Ctrl_Reference";
	rename -uid "D7B40C58-418D-9283-FC0F-21829A410378";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr ".t" -type "double3" 0 1.734345351538946 0.049623530211411124 ;
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftUpLeg" -p "QuickRigCharacter1_Ctrl_Hips";
	rename -uid "B07E30F1-4A0A-B01D-DB28-C4A51FD60B76";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.14425611026601753 -0.00035981806557299113 -0.00089305279448902196 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.18095773643709989 -0.15108751635598253 -2.4162400414633081 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftLeg" -p "QuickRigCharacter1_Ctrl_LeftUpLeg";
	rename -uid "89D91F8F-4B72-9E16-387A-289A6E15DB6C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -0.70876449424763677 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.009106379587738871 -5.6960479036742352e-005 5.4549776579465714 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftFoot" -p "QuickRigCharacter1_Ctrl_LeftLeg";
	rename -uid "67C018D1-4681-BEAA-A01F-1BAF93698824";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -0.74364891828201574 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.080396841899318602 -0.12106590915512243 -3.0372718091116457 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 124.46363061984204 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 -34.463630619842043 -90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftToeBase" -p "QuickRigCharacter1_Ctrl_LeftFoot";
	rename -uid "FD62AC6A-4F0C-5065-54AF-47B14C05FD18";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" 2.9139711932418806e-017 -0.17187815951550103 
		0.11796801891226782 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.7297523902859107e-046 -1.4124500153760508e-030 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightUpLeg" -p "QuickRigCharacter1_Ctrl_Hips";
	rename -uid "51E8F503-40B0-7E9C-35CB-7188B6FACDAA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.14425612090495715 -0.00035981806557299113 
		-0.00089305279448902196 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.18136695322448648 0.15111066336258161 -2.4143734616923616 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560246992293 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 -0.00056024699229033251 
		-90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightLeg" -p "QuickRigCharacter1_Ctrl_RightUpLeg";
	rename -uid "5DB32899-499A-7A75-C533-37BC36D14E1D";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.9139711932418806e-017 -0.70876449424763699 
		6.9304088282001403e-006 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.0079199116668873214 3.001381002946493e-005 5.4518326888688176 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightFoot" -p "QuickRigCharacter1_Ctrl_RightLeg";
	rename -uid "7408973A-4F32-0F6B-8CD4-85B7546671FB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -0.74364891828201596 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.079662401204970756 0.11882989922944004 -3.0359949659340506 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -55.536369380397673 -89.997256778997041 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.99811719913788 -34.463630574769461 -90.003327191090833 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightToeBase" -p "QuickRigCharacter1_Ctrl_RightFoot";
	rename -uid "95EC3127-43C2-21BB-4B0C-E787E607C7DB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" -9.9810402537559693e-006 -0.17187815951550103 
		0.11796801891226782 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.7297523902859107e-046 -1.4124500153760508e-030 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Spine" -p "QuickRigCharacter1_Ctrl_Hips";
	rename -uid "D6405033-4977-08F1-2589-B7AED42A6500";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.14779824284430901 -0.014337686103159986 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 1.9083328088781101e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -86.166425728878238 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 3.8335742711217855 89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Spine1" -p "QuickRigCharacter1_Ctrl_Spine";
	rename -uid "C73CEC76-46FF-4637-415E-7EA7C630C3DE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.14802226870078716 -0.0099187526177233597 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -9.5416640443905503e-015 -1.2722218725854067e-014 3.1805546814635183e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -86.166422497220324 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 3.8335775027796788 89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Spine2" -p "QuickRigCharacter1_Ctrl_Spine1";
	rename -uid "5FDFE6D4-4B8E-BBFC-DBB6-17AB53BDCD3A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.14802214354667764 -0.0099187526177233597 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -4.4527765540489235e-014 -3.8166656177562201e-014 6.3611093629270477e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -87.727234828815298 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000028 2.2727651711847203 90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftShoulder" -p "QuickRigCharacter1_Ctrl_Spine2";
	rename -uid "D52AB695-41E2-71AE-141D-5DB066CA3D44";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.15485361273165363 0.38709490317997969 -0.019739231881819998 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftArm" -p "QuickRigCharacter1_Ctrl_LeftShoulder";
	rename -uid "399F6139-42F4-77FC-8BDA-9CBAEE68D6AB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.23228041143242142 0 -3.6424639915523508e-018 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.020345360707609811 2.5970399494074816 0.089659027161485202 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftForeArm" -p "QuickRigCharacter1_Ctrl_LeftArm";
	rename -uid "0D78B435-43BF-7D03-FA4C-B38BDA558AAB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.59028047276294138 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 3.2086383126983566e-005 0.00020048868315205998 2.208093060791791 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_LeftHand" -p "QuickRigCharacter1_Ctrl_LeftForeArm";
	rename -uid "661751B2-4AB4-5D1B-670A-439D5CFB6C41";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.34037005557162869 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.465343537351672e-005 1.8993527548149614e-005 -0.00014702237977889037 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightShoulder" -p "QuickRigCharacter1_Ctrl_Spine2";
	rename -uid "B0FBAFDB-4063-82A0-0B20-D0A0D34761B6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.1548536077263295 0.38709490317997969 -0.019739231881819998 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightArm" -p "QuickRigCharacter1_Ctrl_RightShoulder";
	rename -uid "267427A9-47ED-BD76-7D38-E29ACC6C5272";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.23228039578815771 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.020345274669909423 2.5970210000508254 0.089561682466889697 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightForeArm" -p "QuickRigCharacter1_Ctrl_RightArm";
	rename -uid "C68F8C43-44AA-AE2F-4995-D88FE56737D0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.59028047276294138 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.1253557492069406e-005 0.00020639598547203105 2.2077798836712161 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_RightHand" -p "QuickRigCharacter1_Ctrl_RightForeArm";
	rename -uid "61A5F687-42AB-DE5D-C1DD-1E96108CEAF3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.3403700555716283 0 3.6424639915523508e-018 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -5.6997113884726986e-006 1.2626566724363346e-006 -1.3787237587828231e-005 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Neck" -p "QuickRigCharacter1_Ctrl_Spine2";
	rename -uid "D66B0864-4BF5-9C95-52A9-E894C9017A03";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.34365341106424807 -0.013638935064080506 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635183e-015 -9.5416640443905503e-015 1.5902773407317584e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -87.599856491020688 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 2.4001435089793164 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter1_Ctrl_Head" -p "QuickRigCharacter1_Ctrl_Neck";
	rename -uid "B8DCD856-4DF7-9D78-250B-DBA014BDA812";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.45591664752309402 -0.019109713065186201 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2.3322595869211038;
instanceable -a 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FF663215-4DAD-8905-46FF-CC9BD81967C1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "29432E1A-45A7-29B7-E466-47A38883097D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BB1D2EF1-43AB-D757-DD40-B08A95D33B8F";
createNode displayLayerManager -n "layerManager";
	rename -uid "4E23F238-4467-8D28-FF21-299B723736EB";
createNode displayLayer -n "defaultLayer";
	rename -uid "BD11B37D-4F69-6C8D-2751-25BD512779FE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5864D8C1-4439-3F6F-F573-82BB9F9B8D9C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3177DC8C-47C3-A3C2-63C9-2BA8FADB3308";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "2A9799E5-4899-4A26-39D1-7EA16228CD61";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite1";
	rename -uid "F7D4E7E1-4DB6-2FEB-D4B6-2A875819AA5B";
	setAttr -s 9 ".ip";
	setAttr -s 9 ".im";
createNode groupId -n "groupId1";
	rename -uid "2C55327F-4B8F-FCCE-4A95-5AA917B08284";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "EFFE02C4-43BD-3A83-8EB3-B2852D08FC5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "36251535-49BD-2520-EA79-3295383E0155";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "A7FCC244-4DA3-27EB-6C24-CD85692AB885";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F3CA4100-4727-6C6A-D891-CBAAA8ACB403";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "02BF49AC-4C99-3B89-371C-0684C2E509B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "3D920FFD-4CA4-022D-535C-D4AD6D37A4A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "155C9B90-4119-B515-AE71-7FAE373F434C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "0CEBEB32-42C0-4B24-B34F-03A225B30850";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "D14C50C7-4F42-182C-F15A-7AA53D5A90D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "0C7FC381-46D7-B1E8-9D8D-ECB195961FD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "C6D75EBA-4FA8-5ACA-5873-F7A9818A5236";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "B40ED251-4840-8C1B-A2C8-1C8BFFDA1F4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "A156BE4D-4730-04C2-0364-A395E58EBB2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "E205DF3B-49D6-11D5-D331-309973F61BB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "5B27E1B0-4B84-2B3E-14FD-029E81EF5D59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "3FFD96AE-4AD9-976A-2CA3-FF84D42682CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "8BF1DE42-4849-A74F-6249-E994AC4E2211";
	setAttr ".ihi" 0;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "63F5A896-4194-1D7D-3B66-64B0595B193B";
	setAttr ".uopa" yes;
	setAttr -s 210 ".uvtk[0:209]" -type "float2" 1.60893834 0 1.60893834 0
		 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834
		 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893846 0 1.60893846
		 0 1.60893846 0 1.60893846 0 1.60893846 0 1.60893846 0 1.60893846 0 1.60893846 0 1.60893846
		 0 1.60893846 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834
		 0 1.60893834 0 1.60893834 0 1.60893834 0 1.60893834 0 0.80446923 0 0.80446917 0 0.80446917
		 0 0.80446923 0 0.80446917 0 0.80446923 0 0.80446917 0 0.80446923 0 0.80446917 0 0.80446923
		 0 0.80446923 0 0.80446923 0 0.80446917 0 0.80446917 0 -1.86924732 0 -1.86924732 0
		 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732
		 0 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732 0 -1.86924732
		 0 -1.86924732 0 -1.86924732 0 -1.86924744 0 -1.86924732 0 -1.86924732 0 -1.86924744
		 0 -1.86924744 0 -1.86924732 0 -1.86924744 0 -1.86924732 0 -1.86924744 0 -1.86924732
		 0 -1.86924744 0 -1.86924744 0 -1.86924744 0 -1.86924744 0 -1.86924744 0 -1.86924732
		 0 -1.86924732 0 -1.86924732 0 -0.9549005 0 -0.9549005 0 -0.9549005 0 -0.9549005 0
		 -0.9549005 0 -0.9549005 0 -0.9549005 0 -0.9549005 0 -0.9549005 0 -0.9549005 0 -0.9549005
		 0 -0.9549005 0 -0.9549005 0 -0.9549005 0 0.31233874 -1.26422811 0.31233874 -1.26422811
		 0.31233874 -1.26422811 0.31233874 -1.26422811 0.31233874 -1.26422811 0.31233874 -1.26422811
		 0.31233874 -1.26422811 0.31233874 -1.26422811 0.31233874 -1.26422811 0.31233874 -1.26422811
		 0.31233868 -1.26422811 0.31233868 -1.26422811 0.31233874 -1.26422811 0.31233874 -1.26422811
		 0.31233877 -2.39459705 0.31233865 -2.39459705 0.31233865 -2.39459705 0.31233877 -2.39459705
		 0.31233877 -2.39459705 0.31233865 -2.39459705 0.31233865 -2.39459705 0.31233877 -2.39459705
		 0.31233877 -2.39459705 0.31233865 -2.39459705 0.31233865 -2.39459705 0.31233877 -2.39459705
		 0.31233865 -2.39459705 0.31233877 -2.39459705 0.31233865 -2.39459705 0.31233877 -2.39459705
		 0.31233877 -2.39459705 0.31233865 -2.39459705 0.31233877 -2.39459705 0.31233877 -2.39459705
		 0.31233877 -2.39459705 0.31233877 -2.39459705 0.31233877 -2.39459705 0.31233877 -2.39459705
		 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782
		 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705
		 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782
		 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705
		 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782
		 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705
		 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.53543782 -2.39459705 -0.58005768
		 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149
		 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.58005768
		 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149
		 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.58005768 -1.27910149 -0.070728898
		 1.36032462 -0.070729017 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462
		 -0.070729017 1.36032462 -0.070728898 1.36032462 -0.070729017 1.36032462 -0.070728898
		 1.36032462 -0.070728898 1.36032462 -0.070729017 1.36032462 -0.070729017 1.36032462
		 -0.070728898 1.36032462 -0.070728987 1.36032462 -0.070728987 1.36032462 -0.070729017
		 1.36032462 -0.070729017 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462
		 -0.070729017 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462 -0.070728898
		 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462 -0.070729017 1.36032462
		 -0.070728898 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462 -0.070729017
		 1.36032462 -0.070728898 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462
		 -0.070729017 1.36032462 -0.070728898 1.36032462 -0.070728898 1.36032462 -0.070729017
		 1.36032462 -0.070729017 1.36032462 -0.070728898 1.36032462;
createNode polyNormalizeUV -n "polyNormalizeUV1";
	rename -uid "0DFE0AA9-4735-79A5-6220-3CA89829CE7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pa" no;
	setAttr ".cot" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "A94A0DF4-4029-E393-AC87-C991416462C5";
	setAttr ".uopa" yes;
	setAttr -s 210 ".uvtk[0:209]" -type "float2" -0.029445946 0.99478918 -0.034006715
		 0.99478918 -0.029445946 0.99073368 -0.034006715 0.99073368 -0.029445946 0.98667812
		 -0.034006715 0.98667812 -0.029445946 0.98262256 -0.034006715 0.98262256 -0.029445946
		 0.97856706 -0.034006715 0.97856706 -0.038567483 0.99478918 -0.038567483 0.99073368
		 -0.024885178 0.99478918 -0.024885178 0.99073368 -0.030695319 0.99073368 -0.030695319
		 0.98667812 -0.030695319 0.98262256 -0.030695319 0.99478918 -0.030695319 0.97856706
		 -0.030581236 0.99073368 -0.030581236 0.98667812 -0.030581236 0.98262256 -0.030581236
		 0.99478918 -0.030581236 0.97856706 -0.030767679 0.99073368 -0.030767679 0.98667812
		 -0.030767679 0.98262256 -0.030767679 0.99478918 -0.030767679 0.97856706 -0.030514598
		 0.99073368 -0.030514598 0.98667812 -0.030514598 0.98262256 -0.030514598 0.99478918
		 -0.030514598 0.97856706 -0.014770031 0.99478918 -0.01933074 0.99478918 -0.01933074
		 0.99073368 -0.014770031 0.99073368 -0.01933074 0.98667812 -0.014770031 0.98667812
		 -0.01933074 0.98262256 -0.014770031 0.98262256 -0.01933074 0.97856706 -0.014770031
		 0.97856706 -0.023891509 0.99478918 -0.023891509 0.99073368 -0.010209262 0.99478918
		 -0.010209262 0.99073368 0.034006715 0.99478918 0.032938123 0.99478918 0.032938123
		 0.99073368 0.034006715 0.99073368 0.032938123 0.98667812 0.034006715 0.98667812 0.032938123
		 0.98262256 0.034006715 0.98262256 0.032938123 0.97856706 0.034006715 0.97856706 0.029445976
		 0.99478918 0.024885207 0.99478918 0.024885207 0.99073368 0.029445976 0.99073368 0.038567483
		 0.99478918 0.038567483 0.99073368 0.032757401 0.99073368 0.032685041 0.99073368 0.032685041
		 0.98667812 0.032757401 0.98667812 0.032757401 0.98262256 0.032685041 0.98262256 0.032757401
		 0.97856706 0.032685041 0.97856706 0.032757401 0.99478918 0.032685041 0.99478918 0.032871485
		 0.99073368 0.032871485 0.98667812 0.032871485 0.98262256 0.032871485 0.97856706 0.032871485
		 0.99478918 0.029445976 0.98667812 0.029445976 0.98262256 0.029445976 0.97856706 0.017326236
		 0.99478918 0.012765497 0.99478918 0.012765497 0.99073368 0.017326236 0.99073368 0.012765497
		 0.98667812 0.017326236 0.98667812 0.012765497 0.98262256 0.017326236 0.98262256 0.012765497
		 0.97856706 0.017326236 0.97856706 0.0082047284 0.99478918 0.0082047284 0.99073368
		 0.021887004 0.99478918 0.021887004 0.99073368 -0.0057920218 1.015297651 -0.01035279
		 1.015297651 -0.01035279 1.011242151 -0.0057920218 1.011242151 -0.01035279 1.0071866512
		 -0.0057920218 1.0071866512 -0.01035279 1.003131032 -0.0057920218 1.003131032 -0.01035279
		 0.99907553 -0.0057920218 0.99907553 -0.014913559 1.015297651 -0.014913559 1.011242151
		 -0.0012313128 1.015297651 -0.0012313128 1.011242151 -0.0057920218 1.033634663 -0.01035279
		 1.033634663 -0.01035279 1.032461524 -0.0057920218 1.032461524 -0.0057920218 1.029579163
		 -0.01035279 1.029579163 -0.01035279 1.025523663 -0.0057920218 1.025523663 -0.0057920218
		 1.022641182 -0.01035279 1.022641182 -0.01035279 1.021468043 -0.0057920218 1.021468043
		 -0.01035279 1.017412543 -0.0057920218 1.017412543 -0.01035279 1.033634663 -0.014913559
		 1.033634663 -0.014913559 1.032461524 -0.01035279 1.032461524 -0.0012313128 1.033634663
		 -0.0057920218 1.033634663 -0.0057920218 1.032461524 -0.0012313128 1.032461524 -0.0012313128
		 1.029579163 -0.014913559 1.029579163 0.0096739829 1.033634663 0.0051132143 1.033634663
		 0.0051132143 1.032461524 0.0096739829 1.032461524 0.0096739829 1.029579163 0.0051132143
		 1.029579163 0.0051132143 1.025523663 0.0096739829 1.025523663 0.0096739829 1.022641182
		 0.0051132143 1.022641182 0.0051132143 1.021468043 0.0096739829 1.021468043 0.0051132143
		 1.017412543 0.0096739829 1.017412543 0.0051132143 1.033634663 0.00055244565 1.033634663
		 0.00055244565 1.032461524 0.0051132143 1.032461524 0.014234722 1.033634663 0.0096739829
		 1.033634663 0.0096739829 1.032461524 0.014234722 1.032461524 0.014234722 1.029579163
		 0.00055244565 1.029579163 0.010487974 1.015538931 0.0059272051 1.015538931 0.0059272051
		 1.011483431 0.010487974 1.011483431 0.0059272051 1.0074279308 0.010487974 1.0074279308
		 0.0059272051 1.0033723116 0.010487974 1.0033723116 0.0059272051 0.99931681 0.010487974
		 0.99931681 0.0013664663 1.015538931 0.0013664663 1.011483431 0.015048742 1.015538931
		 0.015048742 1.011483431 -0.025794268 0.81634915 0.023626029 0.81634915 0.023626029
		 0.8602947 -0.025794268 0.8602947 0.023626029 0.90424049 -0.025794268 0.90424049 0.023626029
		 0.94818628 -0.025794268 0.94818628 -0.025794268 0.94818628 0.023626029 0.94818628
		 0.023626029 0.99213183 -0.025794268 0.99213183 0.073046386 0.81634915 0.073046386
		 0.8602947 -0.075214624 0.81634915 -0.075214624 0.8602947 0.023626029 0.94818628 -0.025794268
		 0.94818628 0.023626029 0.99213183 0.023626029 0.99213183 -0.025794268 0.99213183
		 -0.025794268 0.99213183 0.023626029 0.94818628 -0.025794268 0.94818628 0.023626029
		 0.99213183 -0.025794268 0.99213183 0.023626029 0.94818628 -0.025794268 0.94818628
		 0.023626029 0.99213183 -0.025794268 0.99213183 0.023626029 0.94818628 -0.025794268
		 0.94818628 0.023626029 0.99213183 -0.025794268 0.99213183 -0.025794268 0.94818628
		 0.023626029 0.94818628 0.023626029 0.99213183 -0.025794268 0.99213183;
createNode lambert -n "lambert2";
	rename -uid "E43EAF76-43F4-9BE3-D736-D7897AAA0EF6";
createNode shadingEngine -n "lambert2SG";
	rename -uid "27AC81BC-4B8E-F020-3E2E-4F838DE92ED1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C22C3D13-463E-0A3D-C945-D7AAE02B1061";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F3E9171C-43D2-1387-7FF6-F8A20C3E8FBC";
createNode file -n "file1";
	rename -uid "94A937A5-4954-47A4-F659-298A6583A8BC";
	setAttr ".ftn" -type "string" "C:/Users/Momo/Desktop/Placeholders/New_Project//sourceimages/malebuyer_PH.png";
	setAttr ".cs" -type "string" "sRGB";
createNode HIKCharacterNode -n "QuickRigCharacter";
	rename -uid "4817D4B2-42B8-9E8D-7B58-5B97581135BE";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "2730729C-425A-CAF0-B163-9D996289BB40";
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKCharacterNode -n "QuickRigCharacter1";
	rename -uid "42794CB3-48D2-8093-634B-63A6CC4A98D9";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".ReferenceTx" 1.2755393981933594e-005;
	setAttr ".ReferenceTy" 0.026773594319820404;
	setAttr ".ReferenceTz" 0.021976783871650696;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTx" 1.2755393981933594e-005;
	setAttr ".HipsTy" 1.7611188888549805;
	setAttr ".HipsTz" 0.07160031795501709;
	setAttr ".HipsRx" 90;
	setAttr ".HipsRy" 5.5408385818357404;
	setAttr ".HipsRz" 90;
	setAttr ".HipsSx" 0.99999999999999989;
	setAttr ".HipsSy" 0.99999999999999989;
	setAttr ".HipsJointOrientx" 90;
	setAttr ".HipsJointOrienty" 5.540838581835744;
	setAttr ".HipsJointOrientz" 90;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.14426887035369873;
	setAttr ".LeftUpLegTy" 1.760759115219116;
	setAttr ".LeftUpLegTz" 0.070707261562347454;
	setAttr ".LeftUpLegRx" -90;
	setAttr ".LeftUpLegRz" -90;
	setAttr ".LeftUpLegJointOrientx" -6.8580710319057077e-015;
	setAttr ".LeftUpLegJointOrienty" -4.7708320221952736e-015;
	setAttr ".LeftUpLegJointOrientz" -174.45916141816426;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.14426887035369873;
	setAttr ".LeftLegTy" 1.0519946719660536;
	setAttr ".LeftLegTz" 0.070707261562347412;
	setAttr ".LeftLegRx" -90;
	setAttr ".LeftLegRz" -90;
	setAttr ".LeftLegJointOrientx" -6.9455861831593998e-015;
	setAttr ".LeftLegJointOrienty" -6.3611093629270351e-015;
	setAttr ".LeftLegJointOrientz" 5.5659706925611559e-015;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.14426887035369873;
	setAttr ".LeftFootTy" 0.3083457222390073;
	setAttr ".LeftFootTz" 0.070707261562347412;
	setAttr ".LeftFootRx" -90;
	setAttr ".LeftFootRy" -34.463630065939107;
	setAttr ".LeftFootRz" -90;
	setAttr ".LeftFootJointOrientx" -3.9267137486842593e-015;
	setAttr ".LeftFootJointOrienty" -6.5527104808138976e-015;
	setAttr ".LeftFootJointOrientz" -34.463630065939107;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -0.14424335956573489;
	setAttr ".RightUpLegTy" 1.760759115219116;
	setAttr ".RightUpLegTz" 0.070707261562347426;
	setAttr ".RightUpLegRx" 90;
	setAttr ".RightUpLegRy" 0.00056049542334120166;
	setAttr ".RightUpLegRz" 90;
	setAttr ".RightUpLegSx" 0.99999999999999978;
	setAttr ".RightUpLegSy" 0.99999999999999978;
	setAttr ".RightUpLegJointOrientx" 6.9574011378761194e-015;
	setAttr ".RightUpLegJointOrienty" 6.3611774239424943e-015;
	setAttr ".RightUpLegJointOrientz" 5.5402780864123988;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -0.14424335956573484;
	setAttr ".RightLegTy" 1.0519946719999669;
	setAttr ".RightLegTz" 0.070714195043836622;
	setAttr ".RightLegRx" 90;
	setAttr ".RightLegRz" 90;
	setAttr ".RightLegSx" 0.99999999999999978;
	setAttr ".RightLegSy" 0.99999999999999978;
	setAttr ".RightLegJointOrientx" 6.9455853023730697e-015;
	setAttr ".RightLegJointOrienty" 4.7708320221952752e-015;
	setAttr ".RightLegJointOrientz" 0.0005604954233404064;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -0.14424335956573489;
	setAttr ".RightFootTy" 0.30834572227292067;
	setAttr ".RightFootTz" 0.070714195043836622;
	setAttr ".RightFootRx" 89.9981151304995;
	setAttr ".RightFootRy" 34.46362992487613;
	setAttr ".RightFootRz" 89.996669153260356;
	setAttr ".RightFootSx" 0.99999999999999978;
	setAttr ".RightFootSy" 0.99999999999999967;
	setAttr ".RightFootSz" 0.99999999999999989;
	setAttr ".RightFootJointOrientx" 3.926713764161543e-015;
	setAttr ".RightFootJointOrienty" -0.0027462350539982786;
	setAttr ".RightFootJointOrientz" -34.463629970047819;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTx" 1.2755393981933592e-005;
	setAttr ".SpineTy" 1.9089172294617951;
	setAttr ".SpineTz" 0.057262626488811849;
	setAttr ".SpineRx" 90;
	setAttr ".SpineRy" 3.8335748790916382;
	setAttr ".SpineRz" 90;
	setAttr ".SpineJointOrientx" 6.5478039446866066e-015;
	setAttr ".SpineJointOrienty" 6.168725766563357e-015;
	setAttr ".SpineJointOrientz" 1.7072637027441024;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 0.38714677095413214;
	setAttr ".LeftArmTy" 2.592056512832642;
	setAttr ".LeftArmTz" 0.01768589019775391;
	setAttr ".LeftArmRx" 90;
	setAttr ".LeftArmSx" 0.99999999999999989;
	setAttr ".LeftArmSy" 0.99999999999999989;
	setAttr ".LeftArmSz" 0.99999999999999989;
	setAttr ".LeftArmJointOrientx" 90;
	setAttr ".LeftArmJointOrienty" 2.3543531768944904e-015;
	setAttr ".LeftArmJointOrientz" 6.2820632370989865e-014;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 0.97742722934663817;
	setAttr ".LeftForeArmTy" 2.592056512832642;
	setAttr ".LeftForeArmTz" 0.017685890197753913;
	setAttr ".LeftForeArmRx" 90;
	setAttr ".LeftForeArmSx" 0.99999999999999989;
	setAttr ".LeftForeArmSy" 0.99999999999999989;
	setAttr ".LeftForeArmSz" 0.99999999999999989;
	setAttr ".LeftForeArmJointOrientx" 1.8685758753598164e-014;
	setAttr ".LeftForeArmJointOrienty" 9.0760948253656407e-031;
	setAttr ".LeftForeArmJointOrientz" -2.7829853462805772e-015;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 1.3177972699290881;
	setAttr ".LeftHandTy" 2.592056512832642;
	setAttr ".LeftHandTz" 0.01768589019775391;
	setAttr ".LeftHandRx" 90;
	setAttr ".LeftHandSx" 0.99999999999999989;
	setAttr ".LeftHandSy" 0.99999999999999989;
	setAttr ".LeftHandSz" 0.99999999999999989;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -0.38712126016616827;
	setAttr ".RightArmTy" 2.592056512832642;
	setAttr ".RightArmTz" 0.01768589019775391;
	setAttr ".RightArmRx" -90;
	setAttr ".RightArmSx" 0.99999999999999989;
	setAttr ".RightArmSy" 0.99999999999999989;
	setAttr ".RightArmSz" 0.99999999999999989;
	setAttr ".RightArmJointOrientx" 90.000000000000014;
	setAttr ".RightArmJointOrienty" -2.782985346280578e-015;
	setAttr ".RightArmJointOrientz" -2.896626008095419e-031;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -0.97740171855867441;
	setAttr ".RightForeArmTy" 2.592056512832642;
	setAttr ".RightForeArmTz" 0.01768589019775391;
	setAttr ".RightForeArmRx" -90;
	setAttr ".RightForeArmSx" 0.99999999999999989;
	setAttr ".RightForeArmSy" 0.99999999999999989;
	setAttr ".RightForeArmSz" 0.99999999999999989;
	setAttr ".RightForeArmJointOrientx" -6.7586786981099719e-015;
	setAttr ".RightForeArmJointOrienty" 3.0483540370908899e-031;
	setAttr ".RightForeArmJointOrientz" 2.5842006786891076e-015;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -1.317771759141124;
	setAttr ".RightHandTy" 2.592056512832642;
	setAttr ".RightHandTz" 0.01768589019775391;
	setAttr ".RightHandRx" -90;
	setAttr ".RightHandSx" 0.99999999999999989;
	setAttr ".RightHandSy" 0.99999999999999989;
	setAttr ".RightHandSz" 0.99999999999999989;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" 1.2755393981933594e-005;
	setAttr ".HeadTy" 3.0045315623283382;
	setAttr ".HeadTz" 0.0046764747743388412;
	setAttr ".HeadRx" 90;
	setAttr ".HeadRy" 2.400144388516591;
	setAttr ".HeadRz" 90;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.14426887035369873;
	setAttr ".LeftToeBaseTy" 0.13646756319283437;
	setAttr ".LeftToeBaseTz" 0.18867527770813092;
	setAttr ".LeftToeBaseRx" -90;
	setAttr ".LeftToeBaseRy" -34.463630065939107;
	setAttr ".LeftToeBaseRz" -90;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -0.14425335157232222;
	setAttr ".RightToeBaseTy" 0.13646756322674763;
	setAttr ".RightToeBaseTz" 0.18868221076645375;
	setAttr ".RightToeBaseRx" 89.9981151304995;
	setAttr ".RightToeBaseRy" 34.46362992487613;
	setAttr ".RightToeBaseRz" 89.996669153260356;
	setAttr ".RightToeBaseSx" 0.99999999999999978;
	setAttr ".RightToeBaseSy" 0.99999999999999967;
	setAttr ".RightToeBaseSz" 0.99999999999999989;
	setAttr ".RightToeBaseJointOrienty" 1.4622811973002396e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.15486636161804193;
	setAttr ".LeftShoulderTy" 2.5920565128326416;
	setAttr ".LeftShoulderTz" 0.017685890197753917;
	setAttr ".LeftShoulderSx" 0.99999999999999989;
	setAttr ".LeftShoulderSy" 0.99999999999999989;
	setAttr ".LeftShoulderSz" 0.99999999999999989;
	setAttr ".LeftShoulderJointOrientx" -87.727234742286356;
	setAttr ".LeftShoulderJointOrienty" -90;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.15484085083007812;
	setAttr ".RightShoulderTy" 2.5920565128326416;
	setAttr ".RightShoulderTz" 0.01768589019775391;
	setAttr ".RightShoulderRx" 180;
	setAttr ".RightShoulderSx" 0.99999999999999989;
	setAttr ".RightShoulderSy" 0.99999999999999989;
	setAttr ".RightShoulderSz" 0.99999999999999989;
	setAttr ".RightShoulderJointOrientx" 92.272765257713644;
	setAttr ".RightShoulderJointOrienty" -90;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTx" 1.2755393981933592e-005;
	setAttr ".NeckTy" 2.5486150979995723;
	setAttr ".NeckTz" 0.023786187171936056;
	setAttr ".NeckRx" 90;
	setAttr ".NeckRy" 2.400144388516591;
	setAttr ".NeckRz" 90;
	setAttr ".NeckJointOrientx" 6.7000694862208365e-015;
	setAttr ".NeckJointOrienty" 6.0030475610749808e-015;
	setAttr ".NeckJointOrientz" -0.12737913080294608;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 2.641724;
	setAttr ".LeftFingerBaseTy" 4.825773;
	setAttr ".LeftFingerBaseTz" 0.042804599999999998;
	setAttr ".LeftFingerBaseRy" -6.2191910648259628e-005;
	setAttr ".RightFingerBaseTx" -2.64172;
	setAttr ".RightFingerBaseTy" 4.825783;
	setAttr ".RightFingerBaseTz" 0.04283;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Tx" 1.2755393981933595e-005;
	setAttr ".Spine1Ty" 2.0569394709718578;
	setAttr ".Spine1Tz" 0.047343874115370742;
	setAttr ".Spine1Rx" 90;
	setAttr ".Spine1Ry" 3.8335748790916382;
	setAttr ".Spine1Rz" 90;
	setAttr ".Spine1JointOrientx" 6.5478037263710061e-015;
	setAttr ".Spine1JointOrienty" 6.1687743921817876e-015;
	setAttr ".Spine1JointOrientz" 3.9756933518293952e-015;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Tx" 1.2755393981933595e-005;
	setAttr ".Spine2Ty" 2.2049617124819205;
	setAttr ".Spine2Tz" 0.03742512174192978;
	setAttr ".Spine2Rx" 90;
	setAttr ".Spine2Ry" 2.2727652577136448;
	setAttr ".Spine2Rz" 90;
	setAttr ".Spine2JointOrientx" 6.7133957733615893e-015;
	setAttr ".Spine2JointOrienty" 5.9881371223472975e-015;
	setAttr ".Spine2JointOrientz" 1.560809621377993;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 3.904199;
	setAttr ".Spine4Ty" 4.035433;
	setAttr ".Spine5Ty" 4.166667;
	setAttr ".Spine6Ty" 4.2979;
	setAttr ".Spine7Ty" 4.429134;
	setAttr ".Spine8Ty" 4.560367;
	setAttr ".Spine9Ty" 4.691601;
	setAttr ".Neck1Ty" 4.822835;
	setAttr ".Neck2Ty" 4.888451;
	setAttr ".Neck3Ty" 4.954068;
	setAttr ".Neck4Ty" 5.0196850000000008;
	setAttr ".Neck5Ty" 5.085302;
	setAttr ".Neck6Ty" 5.150919;
	setAttr ".Neck7Ty" 5.216535;
	setAttr ".Neck8Ty" 5.282152;
	setAttr ".Neck9Ty" 5.347769;
	setAttr ".LeftUpLegRollTx" 0.292323;
	setAttr ".LeftUpLegRollTy" 2.329321;
	setAttr ".LeftLegRollTx" 0.292323;
	setAttr ".LeftLegRollTy" 0.877933;
	setAttr ".RightUpLegRollTx" -0.292323;
	setAttr ".RightUpLegRollTy" 2.329321;
	setAttr ".RightUpLegRollRx" -1.9846138924427527e-005;
	setAttr ".RightLegRollTx" -0.292323;
	setAttr ".RightLegRollTy" 0.877933;
	setAttr ".RightLegRollTz" 1.4403700000000001e-005;
	setAttr ".LeftArmRollTx" 1.081642;
	setAttr ".LeftArmRollTy" 4.80934;
	setAttr ".LeftForeArmRollTx" 2.012482;
	setAttr ".LeftForeArmRollTy" 4.80934;
	setAttr ".RightArmRollTx" -1.081644;
	setAttr ".RightArmRollTy" 4.80935;
	setAttr ".RightForeArmRollTx" -2.012484;
	setAttr ".RightForeArmRollTy" 4.80935;
	setAttr ".HipsTranslationTy" 3.28084;
	setAttr ".LeftHandThumb1Tx" 2.495362;
	setAttr ".LeftHandThumb1Ty" 4.783142;
	setAttr ".LeftHandThumb1Tz" 0.1405;
	setAttr ".LeftHandThumb2Tx" 2.577796;
	setAttr ".LeftHandThumb2Ty" 4.765554;
	setAttr ".LeftHandThumb2Tz" 0.16371;
	setAttr ".LeftHandThumb2Rz" -5.1986726165753493e-006;
	setAttr ".LeftHandThumb3Tx" 2.661232;
	setAttr ".LeftHandThumb3Ty" 4.765553;
	setAttr ".LeftHandThumb3Tz" 0.163711;
	setAttr ".LeftHandThumb4Tx" 2.748724;
	setAttr ".LeftHandThumb4Ty" 4.765554;
	setAttr ".LeftHandThumb4Tz" 0.16371;
	setAttr ".LeftHandIndex1Tx" 2.642121;
	setAttr ".LeftHandIndex1Ty" 4.815893;
	setAttr ".LeftHandIndex1Tz" 0.11389999999999999;
	setAttr ".LeftHandIndex1Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex2Tx" 2.780663;
	setAttr ".LeftHandIndex2Ty" 4.8158920000000007;
	setAttr ".LeftHandIndex2Tz" 0.118729;
	setAttr ".LeftHandIndex2Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex3Tx" 2.867681;
	setAttr ".LeftHandIndex3Ty" 4.8158920000000007;
	setAttr ".LeftHandIndex3Tz" 0.121763;
	setAttr ".LeftHandIndex3Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex4Tx" 2.931888;
	setAttr ".LeftHandIndex4Ty" 4.815891;
	setAttr ".LeftHandIndex4Tz" 0.124001;
	setAttr ".LeftHandIndex4Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex4Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandMiddle1Tx" 2.641724;
	setAttr ".LeftHandMiddle1Ty" 4.825773;
	setAttr ".LeftHandMiddle1Tz" 0.042804599999999998;
	setAttr ".LeftHandMiddle1Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle2Tx" 2.801279;
	setAttr ".LeftHandMiddle2Ty" 4.825773;
	setAttr ".LeftHandMiddle2Tz" 0.042814499999999998;
	setAttr ".LeftHandMiddle2Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle3Tx" 2.892002;
	setAttr ".LeftHandMiddle3Ty" 4.825773;
	setAttr ".LeftHandMiddle3Tz" 0.042820200000000003;
	setAttr ".LeftHandMiddle3Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle4Tx" 2.957804;
	setAttr ".LeftHandMiddle4Ty" 4.825773;
	setAttr ".LeftHandMiddle4Tz" 0.0428242;
	setAttr ".LeftHandMiddle4Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandRing1Tx" 2.644476;
	setAttr ".LeftHandRing1Ty" 4.821805;
	setAttr ".LeftHandRing1Tz" -0.026022300000000002;
	setAttr ".LeftHandRing1Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing2Tx" 2.793352;
	setAttr ".LeftHandRing2Ty" 4.821805;
	setAttr ".LeftHandRing2Tz" -0.026022300000000002;
	setAttr ".LeftHandRing2Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing3Tx" 2.86896;
	setAttr ".LeftHandRing3Ty" 4.821805;
	setAttr ".LeftHandRing3Tz" -0.026022300000000002;
	setAttr ".LeftHandRing3Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing4Tx" 2.932062;
	setAttr ".LeftHandRing4Ty" 4.821805;
	setAttr ".LeftHandRing4Tz" -0.026022300000000002;
	setAttr ".LeftHandRing4Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandPinky1Tx" 2.644099;
	setAttr ".LeftHandPinky1Ty" 4.79907;
	setAttr ".LeftHandPinky1Tz" -0.081704600000000002;
	setAttr ".LeftHandPinky1Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky2Tx" 2.743971;
	setAttr ".LeftHandPinky2Ty" 4.799071;
	setAttr ".LeftHandPinky2Tz" -0.081704600000000002;
	setAttr ".LeftHandPinky2Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky3Tx" 2.808751;
	setAttr ".LeftHandPinky3Ty" 4.799072;
	setAttr ".LeftHandPinky3Tz" -0.081704600000000002;
	setAttr ".LeftHandPinky3Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky4Tx" 2.86343;
	setAttr ".LeftHandPinky4Ty" 4.799073;
	setAttr ".LeftHandPinky4Tz" -0.081704600000000002;
	setAttr ".LeftHandPinky4Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandExtraFinger1Tx" 2.644099;
	setAttr ".LeftHandExtraFinger1Ty" 4.815893;
	setAttr ".LeftHandExtraFinger1Tz" -0.14732099999999998;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 2.711163;
	setAttr ".LeftHandExtraFinger2Ty" 4.8158920000000007;
	setAttr ".LeftHandExtraFinger2Tz" -0.14732099999999998;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 2.775943;
	setAttr ".LeftHandExtraFinger3Ty" 4.8158920000000007;
	setAttr ".LeftHandExtraFinger3Tz" -0.14732099999999998;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 2.830622;
	setAttr ".LeftHandExtraFinger4Ty" 4.815891;
	setAttr ".LeftHandExtraFinger4Tz" -0.14732099999999998;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -2.495349;
	setAttr ".RightHandThumb1Ty" 4.783152;
	setAttr ".RightHandThumb1Tz" 0.14051199999999997;
	setAttr ".RightHandThumb2Tx" -2.577781;
	setAttr ".RightHandThumb2Ty" 4.765564;
	setAttr ".RightHandThumb2Tz" 0.16373;
	setAttr ".RightHandThumb2Rz" -1.0508383080162579e-005;
	setAttr ".RightHandThumb3Tx" -2.661167;
	setAttr ".RightHandThumb3Ty" 4.765565;
	setAttr ".RightHandThumb3Tz" 0.166644;
	setAttr ".RightHandThumb3Rz" -6.8328593018026814e-006;
	setAttr ".RightHandThumb4Tx" -2.748605;
	setAttr ".RightHandThumb4Ty" 4.765565;
	setAttr ".RightHandThumb4Tz" 0.1697;
	setAttr ".RightHandThumb4Rz" -6.8328593018026814e-006;
	setAttr ".RightHandIndex1Tx" -2.642111;
	setAttr ".RightHandIndex1Ty" 4.815903;
	setAttr ".RightHandIndex1Tz" 0.113925;
	setAttr ".RightHandIndex1Ry" -0.034907713534874346;
	setAttr ".RightHandIndex2Tx" -2.780652;
	setAttr ".RightHandIndex2Ty" 4.815903;
	setAttr ".RightHandIndex2Tz" 0.109091;
	setAttr ".RightHandIndex2Ry" -0.034907713150901909;
	setAttr ".RightHandIndex3Tx" -2.867671;
	setAttr ".RightHandIndex3Ty" 4.815903;
	setAttr ".RightHandIndex3Tz" 0.106054;
	setAttr ".RightHandIndex3Ry" -0.034907713150901909;
	setAttr ".RightHandIndex4Tx" -2.931878;
	setAttr ".RightHandIndex4Ty" 4.815903;
	setAttr ".RightHandIndex4Tz" 0.103814;
	setAttr ".RightHandIndex4Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle1Tx" -2.64172;
	setAttr ".RightHandMiddle1Ty" 4.825783;
	setAttr ".RightHandMiddle1Tz" 0.04283;
	setAttr ".RightHandMiddle1Ry" -0.034907713534874346;
	setAttr ".RightHandMiddle2Tx" -2.801179;
	setAttr ".RightHandMiddle2Ty" 4.825783;
	setAttr ".RightHandMiddle2Tz" 0.037265699999999999;
	setAttr ".RightHandMiddle2Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle3Tx" -2.891846;
	setAttr ".RightHandMiddle3Ty" 4.825783;
	setAttr ".RightHandMiddle3Tz" 0.034101899999999997;
	setAttr ".RightHandMiddle3Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle4Tx" -2.957608;
	setAttr ".RightHandMiddle4Ty" 4.825783;
	setAttr ".RightHandMiddle4Tz" 0.031807200000000001;
	setAttr ".RightHandMiddle4Ry" -0.034907713150901909;
	setAttr ".RightHandRing1Tx" -2.644478;
	setAttr ".RightHandRing1Ty" 4.821814;
	setAttr ".RightHandRing1Tz" -0.025996600000000002;
	setAttr ".RightHandRing1Ry" -0.034907713534874346;
	setAttr ".RightHandRing2Tx" -2.793264;
	setAttr ".RightHandRing2Ty" 4.821814;
	setAttr ".RightHandRing2Tz" -0.031188500000000001;
	setAttr ".RightHandRing2Ry" -0.034907713150901909;
	setAttr ".RightHandRing3Tx" -2.868826;
	setAttr ".RightHandRing3Ty" 4.821814;
	setAttr ".RightHandRing3Tz" -0.0338252;
	setAttr ".RightHandRing3Ry" -0.034907713150901909;
	setAttr ".RightHandRing4Tx" -2.93189;
	setAttr ".RightHandRing4Ty" 4.821814;
	setAttr ".RightHandRing4Tz" -0.036025799999999997;
	setAttr ".RightHandRing4Ry" -0.034907713150901909;
	setAttr ".RightHandPinky1Tx" -2.644106;
	setAttr ".RightHandPinky1Ty" 4.79908;
	setAttr ".RightHandPinky1Tz" -0.081678899999999999;
	setAttr ".RightHandPinky1Ry" -0.034907713534874346;
	setAttr ".RightHandPinky1Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky2Tx" -2.744039;
	setAttr ".RightHandPinky2Ty" 4.799078;
	setAttr ".RightHandPinky2Tz" -0.085166099999999995;
	setAttr ".RightHandPinky2Ry" -0.034907713150901909;
	setAttr ".RightHandPinky2Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky3Tx" -2.808858;
	setAttr ".RightHandPinky3Ty" 4.799076;
	setAttr ".RightHandPinky3Tz" -0.087427899999999989;
	setAttr ".RightHandPinky3Ry" -0.034907713150901909;
	setAttr ".RightHandPinky3Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky4Tx" -2.86357;
	setAttr ".RightHandPinky4Ty" 4.799075;
	setAttr ".RightHandPinky4Tz" -0.089337100000000003;
	setAttr ".RightHandPinky4Ry" -0.034907713150901909;
	setAttr ".RightHandPinky4Rz" 2.1663288475141418e-005;
	setAttr ".RightHandExtraFinger1Tx" -2.644106;
	setAttr ".RightHandExtraFinger1Ty" 4.815903;
	setAttr ".RightHandExtraFinger1Tz" -0.14729600000000004;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -2.71123;
	setAttr ".RightHandExtraFinger2Ty" 4.815903;
	setAttr ".RightHandExtraFinger2Tz" -0.150783;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -2.77605;
	setAttr ".RightHandExtraFinger3Ty" 4.815903;
	setAttr ".RightHandExtraFinger3Tz" -0.153045;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -2.830762;
	setAttr ".RightHandExtraFinger4Ty" 4.815903;
	setAttr ".RightHandExtraFinger4Tz" -0.154954;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 0.202894;
	setAttr ".LeftFootThumb1Ty" 0.164017;
	setAttr ".LeftFootThumb1Tz" 0.0633243;
	setAttr ".LeftFootThumb2Tx" 0.149324;
	setAttr ".LeftFootThumb2Ty" 0.087414199999999997;
	setAttr ".LeftFootThumb2Tz" 0.117846;
	setAttr ".LeftFootThumb3Tx" 0.113581;
	setAttr ".LeftFootThumb3Ty" 0.061944800000000001;
	setAttr ".LeftFootThumb3Tz" 0.209978;
	setAttr ".LeftFootThumb4Tx" 0.113581;
	setAttr ".LeftFootThumb4Ty" 0.061944800000000001;
	setAttr ".LeftFootThumb4Tz" 0.318149;
	setAttr ".LeftFootIndex1Tx" 0.233285;
	setAttr ".LeftFootIndex1Ty" 0.061944899999999997;
	setAttr ".LeftFootIndex1Tz" 0.425024;
	setAttr ".LeftFootIndex2Tx" 0.233285;
	setAttr ".LeftFootIndex2Ty" 0.061944899999999997;
	setAttr ".LeftFootIndex2Tz" 0.48654;
	setAttr ".LeftFootIndex3Tx" 0.233285;
	setAttr ".LeftFootIndex3Ty" 0.061944899999999997;
	setAttr ".LeftFootIndex3Tz" 0.549972;
	setAttr ".LeftFootIndex4Tx" 0.233285;
	setAttr ".LeftFootIndex4Ty" 0.061944899999999997;
	setAttr ".LeftFootIndex4Tz" 0.61846;
	setAttr ".LeftFootMiddle1Tx" 0.292543;
	setAttr ".LeftFootMiddle1Ty" 0.061944899999999997;
	setAttr ".LeftFootMiddle1Tz" 0.425024;
	setAttr ".LeftFootMiddle2Tx" 0.292543;
	setAttr ".LeftFootMiddle2Ty" 0.061944899999999997;
	setAttr ".LeftFootMiddle2Tz" 0.486503;
	setAttr ".LeftFootMiddle3Tx" 0.292543;
	setAttr ".LeftFootMiddle3Ty" 0.061944899999999997;
	setAttr ".LeftFootMiddle3Tz" 0.54625;
	setAttr ".LeftFootMiddle4Tx" 0.292543;
	setAttr ".LeftFootMiddle4Ty" 0.061944899999999997;
	setAttr ".LeftFootMiddle4Tz" 0.609107;
	setAttr ".LeftFootRing1Tx" 0.351834;
	setAttr ".LeftFootRing1Ty" 0.061944899999999997;
	setAttr ".LeftFootRing1Tz" 0.425024;
	setAttr ".LeftFootRing2Tx" 0.351834;
	setAttr ".LeftFootRing2Ty" 0.061944899999999997;
	setAttr ".LeftFootRing2Tz" 0.482725;
	setAttr ".LeftFootRing3Tx" 0.351834;
	setAttr ".LeftFootRing3Ty" 0.061944899999999997;
	setAttr ".LeftFootRing3Tz" 0.540426;
	setAttr ".LeftFootRing4Tx" 0.351834;
	setAttr ".LeftFootRing4Ty" 0.061944899999999997;
	setAttr ".LeftFootRing4Tz" 0.59956899999999991;
	setAttr ".LeftFootPinky1Tx" 0.411083;
	setAttr ".LeftFootPinky1Ty" 0.061944899999999997;
	setAttr ".LeftFootPinky1Tz" 0.425024;
	setAttr ".LeftFootPinky2Tx" 0.411083;
	setAttr ".LeftFootPinky2Ty" 0.061944899999999997;
	setAttr ".LeftFootPinky2Tz" 0.478335;
	setAttr ".LeftFootPinky3Tx" 0.411083;
	setAttr ".LeftFootPinky3Ty" 0.061944899999999997;
	setAttr ".LeftFootPinky3Tz" 0.529646;
	setAttr ".LeftFootPinky4Tx" 0.411083;
	setAttr ".LeftFootPinky4Ty" 0.061944899999999997;
	setAttr ".LeftFootPinky4Tz" 0.585997;
	setAttr ".LeftFootExtraFinger1Tx" 0.166867;
	setAttr ".LeftFootExtraFinger1Ty" 0.061944899999999997;
	setAttr ".LeftFootExtraFinger1Tz" 0.425024;
	setAttr ".LeftFootExtraFinger2Tx" 0.166867;
	setAttr ".LeftFootExtraFinger2Ty" 0.061944899999999997;
	setAttr ".LeftFootExtraFinger2Tz" 0.490289;
	setAttr ".LeftFootExtraFinger3Tx" 0.166867;
	setAttr ".LeftFootExtraFinger3Ty" 0.061944899999999997;
	setAttr ".LeftFootExtraFinger3Tz" 0.557475;
	setAttr ".LeftFootExtraFinger4Tx" 0.166867;
	setAttr ".LeftFootExtraFinger4Ty" 0.061944899999999997;
	setAttr ".LeftFootExtraFinger4Tz" 0.625964;
	setAttr ".RightFootThumb1Tx" -0.202756;
	setAttr ".RightFootThumb1Ty" 0.164017;
	setAttr ".RightFootThumb1Tz" 0.063324199999999997;
	setAttr ".RightFootThumb2Tx" -0.149278;
	setAttr ".RightFootThumb2Ty" 0.087414199999999997;
	setAttr ".RightFootThumb2Tz" 0.117846;
	setAttr ".RightFootThumb3Tx" -0.113517;
	setAttr ".RightFootThumb3Ty" 0.061944899999999997;
	setAttr ".RightFootThumb3Tz" 0.209978;
	setAttr ".RightFootThumb4Tx" -0.113517;
	setAttr ".RightFootThumb4Ty" 0.061944899999999997;
	setAttr ".RightFootThumb4Tz" 0.318149;
	setAttr ".RightFootIndex1Tx" -0.233268;
	setAttr ".RightFootIndex1Ty" 0.061944899999999997;
	setAttr ".RightFootIndex1Tz" 0.425024;
	setAttr ".RightFootIndex2Tx" -0.233268;
	setAttr ".RightFootIndex2Ty" 0.061944899999999997;
	setAttr ".RightFootIndex2Tz" 0.48654;
	setAttr ".RightFootIndex3Tx" -0.233268;
	setAttr ".RightFootIndex3Ty" 0.061944899999999997;
	setAttr ".RightFootIndex3Tz" 0.549972;
	setAttr ".RightFootIndex4Tx" -0.233268;
	setAttr ".RightFootIndex4Ty" 0.061944899999999997;
	setAttr ".RightFootIndex4Tz" 0.61846;
	setAttr ".RightFootMiddle1Tx" -0.29265100000000005;
	setAttr ".RightFootMiddle1Ty" 0.061944899999999997;
	setAttr ".RightFootMiddle1Tz" 0.425024;
	setAttr ".RightFootMiddle2Tx" -0.29265100000000005;
	setAttr ".RightFootMiddle2Ty" 0.061944899999999997;
	setAttr ".RightFootMiddle2Tz" 0.486503;
	setAttr ".RightFootMiddle3Tx" -0.29265100000000005;
	setAttr ".RightFootMiddle3Ty" 0.061944899999999997;
	setAttr ".RightFootMiddle3Tz" 0.54625;
	setAttr ".RightFootMiddle4Tx" -0.29265100000000005;
	setAttr ".RightFootMiddle4Ty" 0.061944899999999997;
	setAttr ".RightFootMiddle4Tz" 0.609107;
	setAttr ".RightFootRing1Tx" -0.351706;
	setAttr ".RightFootRing1Ty" 0.061944899999999997;
	setAttr ".RightFootRing1Tz" 0.425024;
	setAttr ".RightFootRing2Tx" -0.351706;
	setAttr ".RightFootRing2Ty" 0.061944899999999997;
	setAttr ".RightFootRing2Tz" 0.482725;
	setAttr ".RightFootRing3Tx" -0.351706;
	setAttr ".RightFootRing3Ty" 0.061944899999999997;
	setAttr ".RightFootRing3Tz" 0.540426;
	setAttr ".RightFootRing4Tx" -0.351706;
	setAttr ".RightFootRing4Ty" 0.061944899999999997;
	setAttr ".RightFootRing4Tz" 0.59956899999999991;
	setAttr ".RightFootPinky1Tx" -0.411089;
	setAttr ".RightFootPinky1Ty" 0.061944899999999997;
	setAttr ".RightFootPinky1Tz" 0.425024;
	setAttr ".RightFootPinky2Tx" -0.411089;
	setAttr ".RightFootPinky2Ty" 0.061944899999999997;
	setAttr ".RightFootPinky2Tz" 0.478335;
	setAttr ".RightFootPinky3Tx" -0.411089;
	setAttr ".RightFootPinky3Ty" 0.061944899999999997;
	setAttr ".RightFootPinky3Tz" 0.529646;
	setAttr ".RightFootPinky4Tx" -0.411089;
	setAttr ".RightFootPinky4Ty" 0.061944899999999997;
	setAttr ".RightFootPinky4Tz" 0.585997;
	setAttr ".RightFootExtraFinger1Tx" -0.166995;
	setAttr ".RightFootExtraFinger1Ty" 0.061944899999999997;
	setAttr ".RightFootExtraFinger1Tz" 0.425024;
	setAttr ".RightFootExtraFinger2Tx" -0.166995;
	setAttr ".RightFootExtraFinger2Ty" 0.061944899999999997;
	setAttr ".RightFootExtraFinger2Tz" 0.490289;
	setAttr ".RightFootExtraFinger3Tx" -0.166995;
	setAttr ".RightFootExtraFinger3Ty" 0.061944899999999997;
	setAttr ".RightFootExtraFinger3Tz" 0.557475;
	setAttr ".RightFootExtraFinger4Tx" -0.166995;
	setAttr ".RightFootExtraFinger4Ty" 0.061944899999999997;
	setAttr ".RightFootExtraFinger4Tz" 0.625964;
	setAttr ".LeftInHandThumbTx" 2.352686;
	setAttr ".LeftInHandThumbTy" 4.80934;
	setAttr ".LeftInHandIndexTx" 2.352686;
	setAttr ".LeftInHandIndexTy" 4.80934;
	setAttr ".LeftInHandMiddleTx" 2.352686;
	setAttr ".LeftInHandMiddleTy" 4.80934;
	setAttr ".LeftInHandRingTx" 2.352686;
	setAttr ".LeftInHandRingTy" 4.80934;
	setAttr ".LeftInHandPinkyTx" 2.352686;
	setAttr ".LeftInHandPinkyTy" 4.80934;
	setAttr ".LeftInHandExtraFingerTx" 2.352686;
	setAttr ".LeftInHandExtraFingerTy" 4.80934;
	setAttr ".RightInHandThumbTx" -2.352686;
	setAttr ".RightInHandThumbTy" 4.80935;
	setAttr ".RightInHandIndexTx" -2.352686;
	setAttr ".RightInHandIndexTy" 4.80935;
	setAttr ".RightInHandMiddleTx" -2.352686;
	setAttr ".RightInHandMiddleTy" 4.80935;
	setAttr ".RightInHandRingTx" -2.352686;
	setAttr ".RightInHandRingTy" 4.80935;
	setAttr ".RightInHandPinkyTx" -2.352686;
	setAttr ".RightInHandPinkyTy" 4.80935;
	setAttr ".RightInHandExtraFingerTx" -2.352686;
	setAttr ".RightInHandExtraFingerTy" 4.80935;
	setAttr ".LeftInFootThumbTx" 0.292323;
	setAttr ".LeftInFootThumbTy" 0.267401;
	setAttr ".LeftInFootIndexTx" 0.292323;
	setAttr ".LeftInFootIndexTy" 0.267401;
	setAttr ".LeftInFootMiddleTx" 0.292323;
	setAttr ".LeftInFootMiddleTy" 0.267401;
	setAttr ".LeftInFootRingTx" 0.292323;
	setAttr ".LeftInFootRingTy" 0.267401;
	setAttr ".LeftInFootPinkyTx" 0.292323;
	setAttr ".LeftInFootPinkyTy" 0.267401;
	setAttr ".LeftInFootExtraFingerTx" 0.292323;
	setAttr ".LeftInFootExtraFingerTy" 0.267401;
	setAttr ".RightInFootThumbTx" -0.292323;
	setAttr ".RightInFootThumbTy" 0.267401;
	setAttr ".RightInFootThumbTz" 1.4397e-005;
	setAttr ".RightInFootIndexTx" -0.292323;
	setAttr ".RightInFootIndexTy" 0.267401;
	setAttr ".RightInFootIndexTz" 1.4397e-005;
	setAttr ".RightInFootMiddleTx" -0.292323;
	setAttr ".RightInFootMiddleTy" 0.267401;
	setAttr ".RightInFootMiddleTz" 1.4397e-005;
	setAttr ".RightInFootRingTx" -0.292323;
	setAttr ".RightInFootRingTy" 0.267401;
	setAttr ".RightInFootRingTz" 1.4397e-005;
	setAttr ".RightInFootPinkyTx" -0.292323;
	setAttr ".RightInFootPinkyTy" 0.267401;
	setAttr ".RightInFootPinkyTz" 1.4397e-005;
	setAttr ".RightInFootExtraFingerTx" -0.292323;
	setAttr ".RightInFootExtraFingerTy" 0.267401;
	setAttr ".RightInFootExtraFingerTz" 1.4397e-005;
	setAttr ".LeftShoulderExtraTx" 0.405303;
	setAttr ".LeftShoulderExtraTy" 4.80934;
	setAttr ".RightShoulderExtraTx" -0.405303;
	setAttr ".RightShoulderExtraTy" 4.80935;
createNode HIKProperty2State -n "HIKproperties2";
	rename -uid "B77D431F-4FC9-5B65-B908-A1901574A726";
	setAttr ".OutputPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 0.3083457222390073;
	setAttr ".FootBackToAnkle" 0.058984008072891753;
	setAttr ".FootMiddleToAnkle" 0.11796801614578351;
	setAttr ".FootFrontToMiddle" 0.058984008072891753;
	setAttr ".FootInToAnkle" 0.058984008072891753;
	setAttr ".FootOutToAnkle" 0.058984008072891753;
	setAttr ".HandBottomToWrist" 0.5;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 0.077858890656217122;
	setAttr ".HandFrontToMiddle" 0.077858890656217122;
	setAttr ".HandInToWrist" 0.077858890656217122;
	setAttr ".HandOutToWrist" 0.077858890656217122;
	setAttr ".LeftHandThumbTip" 0.018155167412251358;
	setAttr ".LeftHandIndexTip" 0.018155167412251358;
	setAttr ".LeftHandMiddleTip" 0.018155167412251358;
	setAttr ".LeftHandRingTip" 0.018155167412251358;
	setAttr ".LeftHandPinkyTip" 0.018155167412251358;
	setAttr ".LeftHandExtraFingerTip" 0.018155167412251358;
	setAttr ".RightHandThumbTip" 0.018155167412251358;
	setAttr ".RightHandIndexTip" 0.018155167412251358;
	setAttr ".RightHandMiddleTip" 0.018155167412251358;
	setAttr ".RightHandRingTip" 0.018155167412251358;
	setAttr ".RightHandPinkyTip" 0.018155167412251358;
	setAttr ".RightHandExtraFingerTip" 0.018155167412251358;
	setAttr ".LeftFootThumbTip" 0.018155167412251358;
	setAttr ".LeftFootIndexTip" 0.018155167412251358;
	setAttr ".LeftFootMiddleTip" 0.018155167412251358;
	setAttr ".LeftFootRingTip" 0.018155167412251358;
	setAttr ".LeftFootPinkyTip" 0.018155167412251358;
	setAttr ".LeftFootExtraFingerTip" 0.018155167412251358;
	setAttr ".RightFootThumbTip" 0.018155167412251358;
	setAttr ".RightFootIndexTip" 0.018155167412251358;
	setAttr ".RightFootMiddleTip" 0.018155167412251358;
	setAttr ".RightFootRingTip" 0.018155167412251358;
	setAttr ".RightFootPinkyTip" 0.018155167412251358;
	setAttr ".RightFootExtraFingerTip" 0.018155167412251358;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0;
	setAttr ".ParamLeafLeftUpLegRoll2" 0;
	setAttr ".ParamLeafLeftLegRoll2" 0;
	setAttr ".ParamLeafRightUpLegRoll2" 0;
	setAttr ".ParamLeafRightLegRoll2" 0;
	setAttr ".ParamLeafLeftArmRoll2" 0;
	setAttr ".ParamLeafLeftForeArmRoll2" 0;
	setAttr ".ParamLeafRightArmRoll2" 0;
	setAttr ".ParamLeafRightForeArmRoll2" 0;
	setAttr ".ParamLeafLeftUpLegRoll3" 0;
	setAttr ".ParamLeafLeftLegRoll3" 0;
	setAttr ".ParamLeafRightUpLegRoll3" 0;
	setAttr ".ParamLeafRightLegRoll3" 0;
	setAttr ".ParamLeafLeftArmRoll3" 0;
	setAttr ".ParamLeafLeftForeArmRoll3" 0;
	setAttr ".ParamLeafRightArmRoll3" 0;
	setAttr ".ParamLeafRightForeArmRoll3" 0;
	setAttr ".ParamLeafLeftUpLegRoll4" 0;
	setAttr ".ParamLeafLeftLegRoll4" 0;
	setAttr ".ParamLeafRightUpLegRoll4" 0;
	setAttr ".ParamLeafRightLegRoll4" 0;
	setAttr ".ParamLeafLeftArmRoll4" 0;
	setAttr ".ParamLeafLeftForeArmRoll4" 0;
	setAttr ".ParamLeafRightArmRoll4" 0;
	setAttr ".ParamLeafRightForeArmRoll4" 0;
	setAttr ".ParamLeafLeftUpLegRoll5" 0;
	setAttr ".ParamLeafLeftLegRoll5" 0;
	setAttr ".ParamLeafRightUpLegRoll5" 0;
	setAttr ".ParamLeafRightLegRoll5" 0;
	setAttr ".ParamLeafLeftArmRoll5" 0;
	setAttr ".ParamLeafLeftForeArmRoll5" 0;
	setAttr ".ParamLeafRightArmRoll5" 0;
	setAttr ".ParamLeafRightForeArmRoll5" 0;
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "D463B1BB-4342-F4CC-CDFB-BE923D20DEC5";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "1DF42DCF-48A3-F221-2A67-BCB3F0BBFFAA";
	setAttr ".ihi" 0;
	setAttr ".HipsTx" -5.3190496649959867e-009;
	setAttr ".HipsTy" 1.7343453521060506;
	setAttr ".HipsTz" 0.049623530328743108;
	setAttr ".HipsSx" 0.99999995547210208;
	setAttr ".HipsSy" 0.99999995259453445;
	setAttr ".HipsSz" 1.0000000000000004;
	setAttr ".LeftUpLegTx" -0.00027190797043023215;
	setAttr ".LeftUpLegTy" -0.00092362247544078074;
	setAttr ".LeftUpLegTz" 0.14425611558548729;
	setAttr ".LeftUpLegRx" -0.18096676388664523;
	setAttr ".LeftUpLegRy" -0.15108051520722984;
	setAttr ".LeftUpLegRz" -2.4156478926325935;
	setAttr ".LeftUpLegSx" 1.0000001933786729;
	setAttr ".LeftUpLegSy" 1.0000000811362939;
	setAttr ".LeftUpLegSz" 1.0000001784809904;
	setAttr ".LeftLegTx" 0.70876412178532389;
	setAttr ".LeftLegTy" 1.7154657627341304e-007;
	setAttr ".LeftLegTz" -9.0152989185895866e-009;
	setAttr ".LeftLegRx" -0.009102200815942367;
	setAttr ".LeftLegRz" 5.4538162171883222;
	setAttr ".LeftLegSx" 1.0000000209279882;
	setAttr ".LeftLegSy" 1.0000000291648266;
	setAttr ".LeftLegSz" 1.0000000778636171;
	setAttr ".LeftFootTx" 0.74364994686186159;
	setAttr ".LeftFootTy" 1.3414124550128318e-008;
	setAttr ".LeftFootTz" 7.4017399369152365e-007;
	setAttr ".LeftFootRx" 0.080439667099335643;
	setAttr ".LeftFootRy" -0.12112426694858477;
	setAttr ".LeftFootRz" -3.0366993436422494;
	setAttr ".LeftFootSx" 1.0000001300794832;
	setAttr ".LeftFootSy" 0.99999998967227399;
	setAttr ".LeftFootSz" 1.0000000792611194;
	setAttr ".RightUpLegTx" -0.00027190797043023215;
	setAttr ".RightUpLegTy" -0.00092362247544078074;
	setAttr ".RightUpLegTz" -0.14425611558548729;
	setAttr ".RightUpLegRx" -0.1813680405740421;
	setAttr ".RightUpLegRy" -0.15112320847206942;
	setAttr ".RightUpLegRz" -2.4140722847949956;
	setAttr ".RightUpLegSx" 1.0000001639832181;
	setAttr ".RightUpLegSy" 1.0000000855902038;
	setAttr ".RightUpLegSz" 1.0000001438516068;
	setAttr ".RightLegTx" -0.70876561619921008;
	setAttr ".RightLegTy" -2.1921502222098687e-007;
	setAttr ".RightLegTz" 1.8105865570316024e-007;
	setAttr ".RightLegRx" -0.0079195831970494696;
	setAttr ".RightLegRz" 5.4512540504521585;
	setAttr ".RightLegSx" 1.0000000613153477;
	setAttr ".RightLegSy" 0.99999996234921096;
	setAttr ".RightLegSz" 0.99999996898407384;
	setAttr ".RightFootTx" -0.74364867126719369;
	setAttr ".RightFootTy" 5.9161329742996448e-009;
	setAttr ".RightFootTz" -2.2254765700154987e-007;
	setAttr ".RightFootRx" 0.079676361392671535;
	setAttr ".RightFootRy" -0.11883959696496829;
	setAttr ".RightFootRz" -3.0357149560126269;
	setAttr ".RightFootSx" 1.0000000305161125;
	setAttr ".RightFootSy" 1.0000000754398619;
	setAttr ".RightFootSz" 1.0000000201724708;
	setAttr ".SpineTx" 0.14849205970128063;
	setAttr ".SpineTy" -4.1014926946144856e-009;
	setAttr ".SpineTz" -1.6485350946141962e-017;
	setAttr ".SpineSx" 0.99999991900997243;
	setAttr ".SpineSy" 0.99999991701743185;
	setAttr ".SpineSz" 1.0000000000000004;
	setAttr ".LeftArmTx" 0.23228041143242151;
	setAttr ".LeftArmTy" -4.662353909187009e-016;
	setAttr ".LeftArmTz" -3.6424639915523508e-018;
	setAttr ".LeftArmRx" 0.020338788198178231;
	setAttr ".LeftArmRy" -2.5970554196583406;
	setAttr ".LeftArmRz" -0.089642818167550098;
	setAttr ".LeftArmSx" 1.0000000832344886;
	setAttr ".LeftArmSy" 0.99999995046098511;
	setAttr ".LeftArmSz" 0.99999999623545122;
	setAttr ".LeftForeArmTx" 0.59027991862328355;
	setAttr ".LeftForeArmTy" -1.6868715789912624e-007;
	setAttr ".LeftForeArmTz" -1.2390627922928648e-007;
	setAttr ".LeftForeArmRy" 0.00021397502406167774;
	setAttr ".LeftForeArmRz" 2.2080835045455713;
	setAttr ".LeftForeArmSx" 1.0000001816650368;
	setAttr ".LeftForeArmSy" 1.0000001251220227;
	setAttr ".LeftForeArmSz" 1.0000001244432435;
	setAttr ".LeftHandTx" 0.34037101783330237;
	setAttr ".LeftHandTy" -6.4242186111467445e-008;
	setAttr ".LeftHandTz" 2.7298912969756553e-008;
	setAttr ".LeftHandRz" -0.00015388365019856979;
	setAttr ".LeftHandSx" 1.0000001248408499;
	setAttr ".LeftHandSy" 1.0000000852111137;
	setAttr ".LeftHandSz" 1.0000000487098533;
	setAttr ".RightArmTx" -0.23228039578815765;
	setAttr ".RightArmTy" 1.3987061727561026e-015;
	setAttr ".RightArmTz" -1.8212319957761755e-017;
	setAttr ".RightArmRx" 0.020350910840449179;
	setAttr ".RightArmRy" -2.597060546163811;
	setAttr ".RightArmRz" -0.089513872796776806;
	setAttr ".RightArmSx" 1.0000000837743421;
	setAttr ".RightArmSy" 1.0000000066533028;
	setAttr ".RightArmSz" 1.0000000005445149;
	setAttr ".RightForeArmTx" -0.59028065554755471;
	setAttr ".RightForeArmTy" 4.9151962258973557e-007;
	setAttr ".RightForeArmTz" 4.6061222983932265e-007;
	setAttr ".RightForeArmRy" 0.0002495340475540779;
	setAttr ".RightForeArmRz" 2.2077384476325119;
	setAttr ".RightForeArmSx" 1.0000000184122102;
	setAttr ".RightForeArmSy" 0.99999998498450882;
	setAttr ".RightForeArmSz" 1.0000000420974668;
	setAttr ".RightHandTx" -0.34037001490679702;
	setAttr ".RightHandTy" 3.0118924351136842e-008;
	setAttr ".RightHandTz" 5.2621191160648257e-011;
	setAttr ".RightHandSx" 1.0000000679634227;
	setAttr ".RightHandSy" 0.99999997166089283;
	setAttr ".RightHandSz" 0.99999998580845062;
	setAttr ".HeadTx" 0.45631698368702311;
	setAttr ".HeadTy" 7.4932948589141898e-009;
	setAttr ".HeadTz" -4.7810896982866356e-017;
	setAttr ".HeadSx" 0.99999995438165445;
	setAttr ".HeadSy" 0.99999995188552104;
	setAttr ".HeadSz" 0.999999940395357;
	setAttr ".LeftToeBaseTx" 0.20846725516206976;
	setAttr ".LeftToeBaseTy" -4.6064930814125625e-012;
	setAttr ".LeftToeBaseTz" -4.2301494998589126e-008;
	setAttr ".LeftToeBaseSx" 1.0000001300794836;
	setAttr ".LeftToeBaseSy" 0.99999998967227399;
	setAttr ".LeftToeBaseSz" 1.000000079261119;
	setAttr ".RightToeBaseTx" -0.2084675063239903;
	setAttr ".RightToeBaseTy" 1.7552142882899885e-008;
	setAttr ".RightToeBaseTz" 3.4852354306728374e-010;
	setAttr ".RightToeBaseSx" 1.0000000305161125;
	setAttr ".RightToeBaseSy" 1.0000000754398617;
	setAttr ".RightToeBaseSz" 1.0000000201724708;
	setAttr ".LeftShoulderTx" 0.38757317782626394;
	setAttr ".LeftShoulderTy" -0.0043727452858759938;
	setAttr ".LeftShoulderTz" 0.15485361805112338;
	setAttr ".LeftShoulderSz" 0.99999999999999989;
	setAttr ".RightShoulderTx" 0.38757317782626394;
	setAttr ".RightShoulderTy" -0.0043727452858759643;
	setAttr ".RightShoulderTz" -0.15485360240685977;
	setAttr ".RightShoulderSz" 0.99999999999999989;
	setAttr ".NeckTx" 0.34392394191728237;
	setAttr ".NeckTy" 5.1939898867725924e-010;
	setAttr ".NeckTz" -3.5942653713516337e-017;
	setAttr ".NeckSx" 0.99999995438165445;
	setAttr ".NeckSy" 0.99999995188552104;
	setAttr ".NeckSz" 0.999999940395357;
	setAttr ".Spine1Tx" 0.14835422895837813;
	setAttr ".Spine1Ty" 1.5741979023907e-009;
	setAttr ".Spine1Tz" -1.5973129447329915e-017;
	setAttr ".Spine1Sx" 0.99999991900997232;
	setAttr ".Spine1Sy" 0.99999991701743185;
	setAttr ".Spine1Sz" 1.0000000000000004;
	setAttr ".Spine2Tx" 0.14835410408429492;
	setAttr ".Spine2Ty" -6.793430356021869e-009;
	setAttr ".Spine2Tz" -1.597490799420079e-017;
	setAttr ".Spine2Sx" 1.0000000408418694;
	setAttr ".Spine2Sy" 1.0000000408418697;
createNode HIKControlSetNode -n "QuickRigCharacter1_ControlRig";
	rename -uid "5939A1CB-48F2-AD2F-F402-5E9483622F79";
	setAttr ".ihi" 0;
createNode keyingGroup -n "QuickRigCharacter1_FullBodyKG";
	rename -uid "68F76FB9-4D9E-D4AF-4E11-3BB5E992EBF5";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dnsm";
	setAttr -s 40 ".act";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_HipsBPKG";
	rename -uid "AB554847-417B-E603-4235-5F9927EB81A1";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_ChestBPKG";
	rename -uid "440229D1-4055-1E79-DCEC-E89BB59E6EE7";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dnsm";
	setAttr -s 5 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_LeftArmBPKG";
	rename -uid "129BD794-46F8-1F35-0312-4F9959EE4810";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_RightArmBPKG";
	rename -uid "D4E35075-4C7D-19D9-55D4-BA8D2CB16AFE";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_LeftLegBPKG";
	rename -uid "739C11EF-4874-CBD4-9048-64A803C114A8";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_RightLegBPKG";
	rename -uid "288B85BF-4F38-3BA4-1A9E-519A697DA81B";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_HeadBPKG";
	rename -uid "4491E24D-46D9-0092-3C15-3095AB036C03";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 3 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_LeftHandBPKG";
	rename -uid "F27E1EA5-496F-EE5E-AE67-79A2F089AE3C";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_RightHandBPKG";
	rename -uid "9CB4854E-4BC5-8A15-BFFD-26B0651B8D0F";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_LeftFootBPKG";
	rename -uid "30950F6A-4254-E357-ADD9-67AFE1ECF8AE";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter1_RightFootBPKG";
	rename -uid "AAC5F3B0-429D-55B2-B2C4-3D81914FA386";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode HIKFK2State -n "HIKFK2State1";
	rename -uid "39ACEE56-42FD-66A7-050B-4885EF64A3F6";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKEffector2State -n "HIKEffector2State1";
	rename -uid "F103AAA5-4E94-262F-328E-65AF98D2817D";
	setAttr ".ihi" 0;
	setAttr ".EFF" -type "HIKEffectorState" ;
createNode HIKPinning2State -n "HIKPinning2State1";
	rename -uid "FE82E36E-4188-CF6E-1076-E69A80E9D7DE";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKState2FK -n "HIKState2FK1";
	rename -uid "93CB9AB4-44BB-6ECA-F7EC-F4BFE68023AC";
	setAttr ".ihi" 0;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.2805685331573891e-011 -1.7285346487483366e-008 -3.5762788286319847e-009 1;
	setAttr ".HipsGX" -type "matrix" 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 1 2.4651903288156619e-032 0 -2.2204460492503131e-016 2.4651903288156619e-032 1 0
		 0.00038862228393554688 53.678905487060547 2.1823775768280029 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.99999153614044189 0.0025011815596371889 -0.003266703337430954 0
		 -0.0026366584934294224 0.99910783767700195 -0.042148370295763016 0 0.0031583679374307394 0.042156625539064407 0.99910593032836914 0
		 4.3973150253295898 53.667938232421875 2.1551573276519775 1;
	setAttr ".LeftLegGX" -type "matrix" 0.99999099969863892 0.0025107415858656168 -0.0034253450576215982 0
		 -0.0023256808053702116 0.99859178066253662 0.053000852465629578 0 0.0035535928327590227 -0.052992410957813263 0.99858862161636353 0
		 4.4542789459228516 32.084075927734375 3.0656890869140625 1;
	setAttr ".LeftFootGX" -type "matrix" 0.99998164176940918 0.0050470419228076935 -0.0034640489611774683 0
		 -0.0050469483248889446 0.99998760223388672 3.5749999369727448e-005 0 0.0034641851671040058 -1.8266457118443213e-005 0.99999433755874634 0
		 4.5069947242736816 9.4495449066162109 1.8643478155136108 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.999991774559021 -0.002501768060028553 0.0032737860456109047 0
		 0.0026374559383839369 0.99910926818847656 -0.042120877653360367 0 -0.0031654927879571915 0.042129158973693848 0.99910742044448853 0
		 -4.3965377807617187 53.667938232421875 2.1551573276519775 1;
	setAttr ".RightLegGX" -type "matrix" 0.99999105930328369 -0.0025095401797443628 0.0034117349423468113 0
		 0.0023252631071954966 0.99859267473220825 0.052983604371547699 0 -0.0035398977342993021 -0.052975188940763474 0.99858951568603516 0
		 -4.4535126686096191 32.084014892578125 3.0653071403503418 1;
	setAttr ".RightFootGX" -type "matrix" 0.99998188018798828 -0.0050075962208211422 0.0034368482884019613 0
		 0.0050075030885636806 0.99998778104782104 3.5568871680879965e-005 0 -0.0034369833301752806 -1.8358186935074627e-005 0.99999439716339111 0
		 -4.5062170028686523 9.4495010375976563 1.8643583059310913 1;
	setAttr ".SpineGX" -type "matrix" 1 -4.4408920985006262e-016 4.4408920985006262e-016 0
		 4.4408920985006262e-016 1 -1.1102230246251565e-016 0 -4.4408920985006262e-016 1.1102230246251565e-016 1 0
		 0.00038862228393554688 58.183795928955078 1.7453649044036865 1;
	setAttr ".LeftArmGX" -type "matrix" 0.99897187948226929 -0.045311648398637772 -0.0015629547415301204 0
		 0.045312143862247467 0.99897295236587524 0.00028419401496648788 0 0.0015484719770029187 -0.00035472263698466122 0.99999892711639404 0
		 11.800233840942383 79.005882263183594 0.53906595706939697 1;
	setAttr ".LeftForeArmGX" -type "matrix" 0.99829012155532837 -0.045287944376468658 0.036966957151889801 0
		 0.045308403670787811 0.99897336959838867 0.00028460309840738773 0 -0.036941878497600555 0.001390797202475369 0.99931681156158447 0
		 29.773466110229492 78.190650939941406 0.5109405517578125 1;
	setAttr ".LeftHandGX" -type "matrix" 0.99828988313674927 -0.045287571847438812 0.036964267492294312 0
		 0.045308046042919159 0.99897301197052002 0.00028400111477822065 0 -0.036939166486263275 0.0013912632130086422 0.9993165135383606 0
		 40.130233764648438 77.720809936523438 0.89445257186889648 1;
	setAttr ".RightArmGX" -type "matrix" 0.99897164106369019 0.045311737805604935 0.0015607058303430676 0
		 -0.045312236994504929 0.99897277355194092 0.00028427477809600532 0 -0.0015462216688320041 -0.00035470150760374963 0.99999868869781494 0
		 -11.799455642700195 79.005882263183594 0.53906595706939697 1;
	setAttr ".RightForeArmGX" -type "matrix" 0.99829035997390747 0.045287430286407471 -0.036963183432817459 0
		 -0.045307908207178116 0.99897336959838867 0.00028384171309880912 0 0.036938074976205826 0.0013913679867982864 0.9993169903755188 0
		 -29.772710800170898 78.190658569335938 0.51097112894058228 1;
	setAttr ".RightHandGX" -type "matrix" 0.99829012155532837 0.04528750479221344 -0.036962814629077911 0
		 -0.045307975262403488 0.99897313117980957 0.00028403420583344996 0 0.036937717348337173 0.0013911618152633309 0.99931669235229492 0
		 -40.129447937011719 77.7208251953125 0.89444386959075928 1;
	setAttr ".HeadGX" -type "matrix" 1 -4.9960036108132044e-016 4.4408920985006262e-016 0
		 4.9960036108132044e-016 1 -1.1102230246251565e-016 0 -4.4408920985006262e-016 1.1102230246251565e-016 1 0
		 0.00038862228393554688 91.578125 0.14253896474838257 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 0.99998164176940918 0.0050470419228076935 -0.0034640489611774683 0
		 -0.0050469483248889446 0.99998760223388672 3.5749999369727448e-005 0 0.0034641851671040058 -1.8266458937432617e-005 0.99999433755874634 0
		 4.5458908081054687 4.2106962203979492 5.459805965423584 1;
	setAttr ".RightToeBaseGX" -type "matrix" 0.99998188018798828 -0.0050075962208211422 0.0034368482884019613 0
		 0.0050075030885636806 0.99998778104782104 3.5568871680879965e-005 0 -0.0034369833301752806 -1.8358186935074627e-005 0.99999439716339111 0
		 -4.5451130867004395 4.2106471061706543 5.4598212242126465 1;
	setAttr ".LeftShoulderGX" -type "matrix" 1 -2.7755575615628914e-016 2.2204460492503131e-016 0
		 2.7755575615628914e-016 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 4.7203269004821777 79.005882263183594 0.53906595706939697 1;
	setAttr ".RightShoulderGX" -type "matrix" 1 -2.7755575615628914e-016 2.2204460492503131e-016 0
		 2.7755575615628914e-016 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 -4.7195491790771484 79.005882263183594 0.53906595706939697 1;
	setAttr ".NeckGX" -type "matrix" 1 -2.7755575615628914e-016 2.2204460492503131e-016 0
		 2.7755575615628914e-016 1 -1.1102230246251565e-016 0 -2.2204460492503131e-016 1.1102230246251565e-016 1 0
		 0.00038862228393554688 77.681785583496094 0.72500300407409668 1;
	setAttr ".Spine1GX" -type "matrix" 1 -4.4408920985006262e-016 6.106226635438361e-016 0
		 4.4408920985006262e-016 1 -1.6653345369377348e-016 0 -6.106226635438361e-016 1.6653345369377348e-016 1 0
		 0.00038862228393554688 62.695514678955078 1.4430413246154785 1;
	setAttr ".Spine2GX" -type "matrix" 1 -2.7755575615628914e-016 2.2204460492503131e-016 0
		 2.7755575615628914e-016 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 0.00038862228393554688 67.207229614257813 1.1407177448272705 1;
createNode HIKState2FK -n "HIKState2FK2";
	rename -uid "D03FCBFC-410E-98E0-EC4B-0E9F9A9B170F";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter1";
	rename -uid "9394DE69-4DAF-1831-E928-75B5FBA49CB3";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter2";
	rename -uid "19D4C530-4222-FA5A-D4C2-90AA790D54BF";
	setAttr ".ihi" 0;
createNode HIKState2Effector -n "HIKState2Effector1";
	rename -uid "AD5E02C0-4973-AC33-03E8-ADBAC959AF5E";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 1 2.4651903288156619e-032 0 -2.2204460492503131e-016 2.4651903288156619e-032 1 0
		 0.00038862228393554688 53.667938232421875 2.1551573276519775 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 0.99998164176940918 0.0050470419228076935 -0.0034640489611774683 0
		 -0.0050469487905502319 0.99998766183853149 3.5750003007706255e-005 0 0.0034641853999346495 -1.8266458937432617e-005 0.99999439716339111 0
		 4.5069947242736816 9.4495449066162109 1.8643478155136108 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 0.99998188018798828 -0.0050075962208211422 0.0034368482884019613 0
		 0.0050075030885636806 0.99998778104782104 3.5568871680879965e-005 0 -0.0034369833301752806 -1.8358186935074627e-005 0.99999439716339111 0
		 -4.5062170028686523 9.4495010375976563 1.8643583059310913 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" 0.99828988313674927 -0.045287571847438812 0.036964267492294312 0
		 0.045308046042919159 0.99897301197052002 0.00028400111477822065 0 -0.036939166486263275 0.0013912632130086422 0.9993165135383606 0
		 40.130233764648438 77.720809936523438 0.89445257186889648 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 0.99829012155532837 0.04528750479221344 -0.036962814629077911 0
		 -0.045307978987693787 0.99897319078445435 0.00028403423493728042 0 0.036937721073627472 0.0013911619316786528 0.9993167519569397 0
		 -40.129447937011719 77.7208251953125 0.89444386959075928 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 0.99999099969863892 0.0025107415858656168 -0.0034253450576215982 0
		 -0.0023256808053702116 0.99859178066253662 0.053000852465629578 0 0.0035535928327590227 -0.052992410957813263 0.99858862161636353 0
		 4.4542789459228516 32.084075927734375 3.0656890869140625 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 0.99999105930328369 -0.0025095401797443628 0.0034117349423468113 0
		 0.0023252631071954966 0.99859267473220825 0.052983604371547699 0 -0.0035398979671299458 -0.052975192666053772 0.99858957529067993 0
		 -4.4535126686096191 32.084014892578125 3.0653071403503418 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" 0.99829012155532837 -0.045287944376468658 0.036966957151889801 0
		 0.045308403670787811 0.99897336959838867 0.00028460309840738773 0 -0.036941878497600555 0.001390797202475369 0.99931681156158447 0
		 29.773466110229492 78.190650939941406 0.5109405517578125 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 0.99829035997390747 0.045287430286407471 -0.036963183432817459 0
		 -0.045307911932468414 0.99897342920303345 0.00028384174220263958 0 0.036938074976205826 0.0013913679867982864 0.9993169903755188 0
		 -29.772710800170898 78.190658569335938 0.51097112894058228 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 1 -4.4408920985006262e-016 4.4408920985006262e-016 0
		 4.4408920985006262e-016 1 -1.1102230246251565e-016 0 -4.4408920985006262e-016 1.1102230246251565e-016 1 0
		 0.00038862228393554688 58.183795928955078 1.7453649044036865 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 1 -2.7755575615628914e-016 2.2204460492503131e-016 0
		 2.7755575615628914e-016 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 0.00038886070251464844 79.005882263183594 0.53906595706939697 1;
	setAttr ".LeftFootEffectorGXM[0]" -type "matrix" 0.99998164176940918 0.0050470419228076935 -0.0034640489611774683 0
		 -0.0050469487905502319 0.99998766183853149 3.5750003007706255e-005 0 0.0034641853999346495 -1.826646075642202e-005 0.99999439716339111 0
		 4.5458908081054687 4.2106962203979492 5.459805965423584 1;
	setAttr ".RightFootEffectorGXM[0]" -type "matrix" 0.99998188018798828 -0.0050075962208211422 0.0034368482884019613 0
		 0.0050075030885636806 0.99998778104782104 3.5568871680879965e-005 0 -0.0034369833301752806 -1.8358186935074627e-005 0.99999439716339111 0
		 -4.5451130867004395 4.2106471061706543 5.4598212242126465 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 0.99897187948226929 -0.045311648398637772 -0.0015629547415301204 0
		 0.045312147587537766 0.99897301197052002 0.00028419404407031834 0 0.0015484719770029187 -0.00035472263698466122 0.99999892711639404 0
		 11.800233840942383 79.005882263183594 0.53906595706939697 1;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 0.99897164106369019 0.045311737805604935 0.0015607058303430676 0
		 -0.045312236994504929 0.99897277355194092 0.00028427477809600532 0 -0.0015462216688320041 -0.00035470150760374963 0.99999868869781494 0
		 -11.799455642700195 79.005882263183594 0.53906595706939697 1;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 1 -4.9960036108132044e-016 4.4408920985006262e-016 0
		 4.9960036108132044e-016 1 -1.1102230246251565e-016 0 -4.4408920985006262e-016 1.1102230246251565e-016 1 0
		 0.00038862228393554688 91.578125 0.14253896474838257 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 0.99999153614044189 0.0025011815596371889 -0.003266703337430954 0
		 -0.002636658726260066 0.99910789728164673 -0.042148374021053314 0 0.0031583681702613831 0.042156629264354706 0.99910598993301392 0
		 4.3973150253295898 53.667938232421875 2.1551573276519775 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 0.999991774559021 -0.002501768060028553 0.0032737860456109047 0
		 0.0026374561712145805 0.99910932779312134 -0.042120881378650665 0 -0.0031654927879571915 0.042129158973693848 0.99910742044448853 0
		 -4.3965377807617187 53.667938232421875 2.1551573276519775 1;
createNode HIKState2Effector -n "HIKState2Effector2";
	rename -uid "FBE8955C-4E31-403D-D0B4-A28A3D847C18";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "688B31DD-4A42-412A-5EAC-56BB2B44BF69";
	setAttr -s 144 ".wl";
	setAttr -s 5 ".wl[0].w[11:15]"  3.2421250225256414e-007 2.1699201851074593e-006 
		0.0010132475266642015 0.49949212917032415 0.49949212917032415;
	setAttr -s 5 ".wl[1].w[11:15]"  6.1001192771590023e-007 4.1721255558380951e-005 
		0.48594499639355049 0.2630846749159847 0.2509279974229785;
	setAttr -s 5 ".wl[2].w[11:15]"  3.0534919689017717e-007 2.0488190227980981e-006 
		0.00096775177809420971 0.49951494702684301 0.49951494702684301;
	setAttr -s 5 ".wl[3].w[11:15]"  6.2987733911329665e-007 4.3125024840387415e-005 
		0.48238381555609605 0.26530148926835223 0.25227094027337221;
	setAttr -s 5 ".wl[4].w[11:15]"  2.9006693686850413e-007 1.9445017142670829e-006 
		0.00092052661900771625 0.49953861940617061 0.49953861940617061;
	setAttr -s 5 ".wl[5].w[11:15]"  8.6733255031819932e-007 5.9360643987286411e-005 
		0.60557964634212935 0.20577070220662705 0.18858942347470617;
	setAttr -s 5 ".wl[6].w[11:15]"  3.3909297381441629e-007 2.2654948132774959e-006 
		0.0010476517711263554 0.49947487182054334 0.49947487182054334;
	setAttr -s 5 ".wl[7].w[11:15]"  7.5794971074800451e-007 5.1775534938151519e-005 
		0.5449837016534147 0.23516066853863571 0.21980309632330075;
	setAttr -s 5 ".wl[8].w[11:15]"  4.3912824789721713e-008 2.0358713769016376e-006 
		0.029169171777783765 0.48627237887078467 0.48455636956722997;
	setAttr -s 5 ".wl[9].w[11:15]"  1.5160104114832354e-007 9.8935973598851527e-006 
		0.10576595132703671 0.44982270695805926 0.44440129651650284;
	setAttr -s 5 ".wl[10].w[11:15]"  9.6054595305564775e-008 5.8879534558879883e-006 
		0.073345932878209466 0.46474753887811437 0.46190054423562499;
	setAttr -s 5 ".wl[11].w[11:15]"  6.0542283617808846e-008 3.3464756449550981e-006 
		0.055101190639865495 0.4732604594869671 0.47163494285523894;
	setAttr -s 5 ".wl[12].w[11:15]"  7.279863939149838e-008 5.3557948447230146e-007 
		0.0015821088781220627 0.49930838487185547 0.49910889787189872;
	setAttr -s 5 ".wl[13].w[11:15]"  4.4521240708545915e-008 1.3055817817621024e-006 
		0.013029038049144638 0.49407666098231223 0.49289295086552071;
	setAttr -s 5 ".wl[14].w[11:15]"  6.1898962289433949e-008 8.629971861921725e-007 
		0.0082738816803402289 0.49604141849873712 0.49568377492477422;
	setAttr -s 5 ".wl[15].w[11:15]"  6.8675908804447608e-008 6.2304205797370397e-007 
		0.0051773120631047618 0.49750913116223783 0.49731286505669048;
	setAttr -s 5 ".wl[16].w[11:15]"  1.9018232408531685e-007 1.2768798501354658e-005 
		0.15938551275373561 0.42319876782540583 0.41740276044003333;
	setAttr -s 5 ".wl[17].w[11:15]"  4.8874197007114671e-007 3.3208686377224959e-005 
		0.34360365639973084 0.33421957395053992 0.322143072221382;
	setAttr -s 5 ".wl[18].w[11:15]"  3.4748671818511312e-007 2.3464715827532247e-005 
		0.25982392820055372 0.37441800922859436 0.36573425036830626;
	setAttr -s 5 ".wl[19].w[11:15]"  2.4555528284387751e-007 1.6641368992162233e-005 
		0.21998760680365975 0.39287430719466687 0.38712119907739834;
	setAttr -s 5 ".wl[20].w[11:15]"  1.8443372139721133e-007 1.2468281485657597e-006 
		0.00063438414144673138 0.49968209229834165 0.49968209229834165;
	setAttr -s 5 ".wl[21].w[11:15]"  1.1702441173516671e-007 7.9794403500843103e-007 
		0.00045248596581399798 0.49981322066447009 0.49973337840126908;
	setAttr -s 5 ".wl[22].w[11:15]"  1.955315595202038e-007 1.3161967214970525e-006 
		0.00066201116767225542 0.49966823855202336 0.49966823855202336;
	setAttr -s 5 ".wl[23].w[11:15]"  1.8527477939446167e-007 1.2504985344832957e-006 
		0.00063502736575428247 0.49968176843046597 0.49968176843046597;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[11]" 0.0088864590113414844;
	setAttr ".wl[24].w[12]" 0.34531996858978314;
	setAttr ".wl[24].w[13]" 0.64352057955130204;
	setAttr ".wl[24].w[14]" 0.001914594975514911;
	setAttr ".wl[24].w[20]" 0.00035839787205846547;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[11]" 0.0068980078129797888;
	setAttr ".wl[25].w[12]" 0.26906489900314123;
	setAttr ".wl[25].w[13]" 0.72110683532629949;
	setAttr ".wl[25].w[14]" 0.0026402463984632491;
	setAttr ".wl[25].w[20]" 0.00029001145911631589;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[11]" 0.0081179551526780452;
	setAttr ".wl[26].w[12]" 0.34138722061704235;
	setAttr ".wl[26].w[13]" 0.64802370149463817;
	setAttr ".wl[26].w[14]" 0.002124827376050983;
	setAttr ".wl[26].w[20]" 0.00034629535959039933;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[11]" 0.0060708355022764931;
	setAttr ".wl[27].w[12]" 0.26388555370478728;
	setAttr ".wl[27].w[13]" 0.7273174639880009;
	setAttr ".wl[27].w[14]" 0.0024721606887936681;
	setAttr ".wl[27].w[20]" 0.00025398611614170383;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[11]" 0.0081795242963998375;
	setAttr ".wl[28].w[12]" 0.34970708344940643;
	setAttr ".wl[28].w[13]" 0.64004888042865771;
	setAttr ".wl[28].w[14]" 0.0017337376075948312;
	setAttr ".wl[28].w[20]" 0.00033077421794109214;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[11]" 0.0063275573793378581;
	setAttr ".wl[29].w[12]" 0.27085034260022695;
	setAttr ".wl[29].w[13]" 0.72049846032041187;
	setAttr ".wl[29].w[14]" 0.002079121989576673;
	setAttr ".wl[29].w[20]" 0.00024451771044674991;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[11]" 0.0085129508299149111;
	setAttr ".wl[30].w[12]" 0.33619020600760724;
	setAttr ".wl[30].w[13]" 0.65332765835658924;
	setAttr ".wl[30].w[14]" 0.0016437990245108986;
	setAttr ".wl[30].w[20]" 0.00032538578137773793;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[11]" 0.0067234125197061876;
	setAttr ".wl[31].w[12]" 0.2586020292402707;
	setAttr ".wl[31].w[13]" 0.73204478807018714;
	setAttr ".wl[31].w[14]" 0.0023665968652468975;
	setAttr ".wl[31].w[20]" 0.00026317330458903407;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[11]" 4.97883013509547e-007;
	setAttr ".wl[32].w[16]" 3.0137890875327339e-006;
	setAttr ".wl[32].w[17]" 0.0011060007237306145;
	setAttr ".wl[32].w[18]" 0.49944524380208416;
	setAttr ".wl[32].w[19]" 0.49944524380208416;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[11]" 2.2591201389428503e-006;
	setAttr ".wl[33].w[16]" 0.00014922561594988258;
	setAttr ".wl[33].w[17]" 0.48799037299291398;
	setAttr ".wl[33].w[18]" 0.25937972731180531;
	setAttr ".wl[33].w[19]" 0.25247841495919199;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[11]" 4.6168195758340516e-007;
	setAttr ".wl[34].w[16]" 2.8007643838067947e-006;
	setAttr ".wl[34].w[17]" 0.0010390953900663493;
	setAttr ".wl[34].w[18]" 0.49947882108179603;
	setAttr ".wl[34].w[19]" 0.49947882108179603;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[11]" 2.1028196121424896e-006;
	setAttr ".wl[35].w[16]" 0.00014049034418014877;
	setAttr ".wl[35].w[17]" 0.48493990436303624;
	setAttr ".wl[35].w[18]" 0.26062539897632325;
	setAttr ".wl[35].w[19]" 0.25429210349684828;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[11]" 4.5752137099031268e-007;
	setAttr ".wl[36].w[16]" 2.7758102688101846e-006;
	setAttr ".wl[36].w[17]" 0.0010372156404320585;
	setAttr ".wl[36].w[18]" 0.49947977551396405;
	setAttr ".wl[36].w[19]" 0.49947977551396405;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[11]" 2.3856610454625811e-006;
	setAttr ".wl[37].w[16]" 0.00016034684742801547;
	setAttr ".wl[37].w[17]" 0.61036287067110861;
	setAttr ".wl[37].w[18]" 0.19835275453455109;
	setAttr ".wl[37].w[19]" 0.19112164228586689;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[11]" 5.3896350098069749e-007;
	setAttr ".wl[38].w[16]" 3.2607081096215986e-006;
	setAttr ".wl[38].w[17]" 0.0011954373019803231;
	setAttr ".wl[38].w[18]" 0.49940038151320448;
	setAttr ".wl[38].w[19]" 0.49940038151320448;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[11]" 2.2735586802175559e-006;
	setAttr ".wl[39].w[16]" 0.00015136666058571083;
	setAttr ".wl[39].w[17]" 0.54877859525001915;
	setAttr ".wl[39].w[18]" 0.22901421501367428;
	setAttr ".wl[39].w[19]" 0.22205354951704062;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[11]" 1.6857658679662485e-007;
	setAttr ".wl[40].w[16]" 1.027525187716811e-005;
	setAttr ".wl[40].w[17]" 0.0290671839426851;
	setAttr ".wl[40].w[18]" 0.48567253641603325;
	setAttr ".wl[40].w[19]" 0.48524983581281772;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[11]" 4.5241814154963767e-007;
	setAttr ".wl[41].w[16]" 2.9896591524626986e-005;
	setAttr ".wl[41].w[17]" 0.10636854867690385;
	setAttr ".wl[41].w[18]" 0.44747775554099617;
	setAttr ".wl[41].w[19]" 0.4461233467724337;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[11]" 3.811696241482371e-007;
	setAttr ".wl[42].w[16]" 2.43007659486799e-005;
	setAttr ".wl[42].w[17]" 0.073423006867247981;
	setAttr ".wl[42].w[18]" 0.46384525670053678;
	setAttr ".wl[42].w[19]" 0.46270705449664229;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[11]" 3.2676754360788658e-007;
	setAttr ".wl[43].w[16]" 2.0860182157302019e-005;
	setAttr ".wl[43].w[17]" 0.054821488792448268;
	setAttr ".wl[43].w[18]" 0.47303396644599294;
	setAttr ".wl[43].w[19]" 0.47212335781185788;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[11]" 1.1513142868082693e-007;
	setAttr ".wl[44].w[16]" 1.2215109939960672e-006;
	setAttr ".wl[44].w[17]" 0.0015543459299486207;
	setAttr ".wl[44].w[18]" 0.49923251233494148;
	setAttr ".wl[44].w[19]" 0.49921180509268714;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[11]" 1.0090238171473545e-007;
	setAttr ".wl[45].w[16]" 4.2071638356459629e-006;
	setAttr ".wl[45].w[17]" 0.013036380778524785;
	setAttr ".wl[45].w[18]" 0.49356958160311948;
	setAttr ".wl[45].w[19]" 0.49338972955213822;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[11]" 1.2893938963550716e-007;
	setAttr ".wl[46].w[16]" 3.5834700836705846e-006;
	setAttr ".wl[46].w[17]" 0.0082011010132458546;
	setAttr ".wl[46].w[18]" 0.49596837582769759;
	setAttr ".wl[46].w[19]" 0.49582681074958329;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[11]" 1.2555870052352811e-007;
	setAttr ".wl[47].w[16]" 2.7240748787470073e-006;
	setAttr ".wl[47].w[17]" 0.0050787092414367793;
	setAttr ".wl[47].w[18]" 0.49750359005090716;
	setAttr ".wl[47].w[19]" 0.4974148510740769;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[11]" 7.4867297526297433e-007;
	setAttr ".wl[48].w[16]" 5.0175540680884531e-005;
	setAttr ".wl[48].w[17]" 0.15972989017898384;
	setAttr ".wl[48].w[18]" 0.42120362409606082;
	setAttr ".wl[48].w[19]" 0.41901556151129909;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[11]" 1.3837744452904825e-006;
	setAttr ".wl[49].w[16]" 9.2769650815821705e-005;
	setAttr ".wl[49].w[17]" 0.34612553630066972;
	setAttr ".wl[49].w[18]" 0.32898433942388994;
	setAttr ".wl[49].w[19]" 0.32479597085017919;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[11]" 1.1705511856401895e-006;
	setAttr ".wl[50].w[16]" 7.7029155674029329e-005;
	setAttr ".wl[50].w[17]" 0.26119215475370416;
	setAttr ".wl[50].w[18]" 0.37116982694632106;
	setAttr ".wl[50].w[19]" 0.36755981859311515;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[11]" 1.1176818075215174e-006;
	setAttr ".wl[51].w[16]" 7.3766934593186016e-005;
	setAttr ".wl[51].w[17]" 0.22018261245552859;
	setAttr ".wl[51].w[18]" 0.39154912627037358;
	setAttr ".wl[51].w[19]" 0.38819337665769715;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[11]" 2.823818033733052e-007;
	setAttr ".wl[52].w[16]" 1.7242732653059136e-006;
	setAttr ".wl[52].w[17]" 0.00068235217804947306;
	setAttr ".wl[52].w[18]" 0.49965782058344088;
	setAttr ".wl[52].w[19]" 0.49965782058344088;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[11]" 1.8701423663477689e-007;
	setAttr ".wl[53].w[16]" 1.1475351066034058e-006;
	setAttr ".wl[53].w[17]" 0.00048475631632167012;
	setAttr ".wl[53].w[18]" 0.49975695456716762;
	setAttr ".wl[53].w[19]" 0.49975695456716762;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[11]" 3.0464250486225163e-007;
	setAttr ".wl[54].w[16]" 1.8497612535234941e-006;
	setAttr ".wl[54].w[17]" 0.00070908812352513052;
	setAttr ".wl[54].w[18]" 0.49964437873635831;
	setAttr ".wl[54].w[19]" 0.49964437873635831;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[11]" 2.7327197865751688e-007;
	setAttr ".wl[55].w[16]" 1.6624741249200689e-006;
	setAttr ".wl[55].w[17]" 0.00064454775227070307;
	setAttr ".wl[55].w[18]" 0.49967675825081281;
	setAttr ".wl[55].w[19]" 0.49967675825081281;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[11]" 0.0027009223250870247;
	setAttr ".wl[56].w[16]" 0.31616113596898293;
	setAttr ".wl[56].w[17]" 0.67372671797465544;
	setAttr ".wl[56].w[18]" 0.0072691115376272196;
	setAttr ".wl[56].w[20]" 0.00014211219364734871;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[11]" 0.003721819324917352;
	setAttr ".wl[57].w[16]" 0.40603976139212844;
	setAttr ".wl[57].w[17]" 0.58404540850206443;
	setAttr ".wl[57].w[18]" 0.0059909733756701019;
	setAttr ".wl[57].w[20]" 0.0002020374052195794;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[11]" 0.0032153128496881416;
	setAttr ".wl[58].w[16]" 0.32306116257185147;
	setAttr ".wl[58].w[17]" 0.66637894049523339;
	setAttr ".wl[58].w[18]" 0.0071690960966976107;
	setAttr ".wl[58].w[20]" 0.00017548798652922574;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[11]" 0.0041307585656414078;
	setAttr ".wl[59].w[16]" 0.42044193928396834;
	setAttr ".wl[59].w[17]" 0.56999720934009712;
	setAttr ".wl[59].w[18]" 0.0052102035792900648;
	setAttr ".wl[59].w[20]" 0.00021988923100315944;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[11]" 0.0030765525477371128;
	setAttr ".wl[60].w[16]" 0.31901970012911263;
	setAttr ".wl[60].w[17]" 0.67105864494295697;
	setAttr ".wl[60].w[18]" 0.0066854861407494226;
	setAttr ".wl[60].w[20]" 0.0001596162394438856;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[11]" 0.0038635670360538093;
	setAttr ".wl[61].w[16]" 0.41669634728477833;
	setAttr ".wl[61].w[17]" 0.57440121853896897;
	setAttr ".wl[61].w[18]" 0.0048425173376503939;
	setAttr ".wl[61].w[20]" 0.00019634980254844004;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[11]" 0.0027657987229113279;
	setAttr ".wl[62].w[16]" 0.33319062539746375;
	setAttr ".wl[62].w[17]" 0.65747259421439264;
	setAttr ".wl[62].w[18]" 0.0064338417756760174;
	setAttr ".wl[62].w[20]" 0.00013713988955639411;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[11]" 0.0036667051299121983;
	setAttr ".wl[63].w[16]" 0.4233028001213317;
	setAttr ".wl[63].w[17]" 0.56756780245997751;
	setAttr ".wl[63].w[18]" 0.0052726348785322999;
	setAttr ".wl[63].w[20]" 0.00019005741024622394;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.0044697300107143624;
	setAttr ".wl[64].w[1]" 0.40726754736219067;
	setAttr ".wl[64].w[2]" 0.57938310937991588;
	setAttr ".wl[64].w[5]" 0.0088057607966491678;
	setAttr ".wl[64].w[9]" 7.3852450529963756e-005;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.0044192886892368043;
	setAttr ".wl[65].w[1]" 0.42264231056423246;
	setAttr ".wl[65].w[2]" 0.56461083775824128;
	setAttr ".wl[65].w[5]" 0.0082571916145974689;
	setAttr ".wl[65].w[9]" 7.0371373692095667e-005;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.0059458762353507963;
	setAttr ".wl[66].w[1]" 0.55025617913862712;
	setAttr ".wl[66].w[2]" 0.4317816938444945;
	setAttr ".wl[66].w[5]" 0.011918576807989646;
	setAttr ".wl[66].w[9]" 9.7673973538168549e-005;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.005972417330341896;
	setAttr ".wl[67].w[1]" 0.56645188771767407;
	setAttr ".wl[67].w[2]" 0.4168436382549604;
	setAttr ".wl[67].w[5]" 0.010635854448167526;
	setAttr ".wl[67].w[9]" 9.6202248856042189e-005;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.0061956722085747254;
	setAttr ".wl[68].w[1]" 0.56512710949690625;
	setAttr ".wl[68].w[2]" 0.41681623477801977;
	setAttr ".wl[68].w[5]" 0.01175813718420818;
	setAttr ".wl[68].w[9]" 0.00010284633229108348;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.0059140076868255892;
	setAttr ".wl[69].w[1]" 0.55257044117730791;
	setAttr ".wl[69].w[2]" 0.43153849882468953;
	setAttr ".wl[69].w[5]" 0.0098808774810670852;
	setAttr ".wl[69].w[9]" 9.6174830109831532e-005;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.0046657376309431828;
	setAttr ".wl[70].w[1]" 0.42254696420207793;
	setAttr ".wl[70].w[2]" 0.56440234641875131;
	setAttr ".wl[70].w[5]" 0.0083075939956235596;
	setAttr ".wl[70].w[9]" 7.7357752603978471e-005;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.0043054973887780967;
	setAttr ".wl[71].w[1]" 0.40916008389263009;
	setAttr ".wl[71].w[2]" 0.5792908864412637;
	setAttr ".wl[71].w[5]" 0.0071748034522555971;
	setAttr ".wl[71].w[9]" 6.8728825072440961e-005;
	setAttr -s 5 ".wl[72].w[1:5]"  6.8805356692087856e-005 0.15408617036658454 
		0.5253999353490727 0.3204450726362873 1.6291363366554712e-008;
	setAttr -s 5 ".wl[73].w[1:5]"  4.6672486979032704e-005 0.10315434875353444 
		0.54052836795081882 0.35627059881397782 1.199468977566152e-008;
	setAttr -s 5 ".wl[74].w[1:5]"  0.00046623017995488491 0.54638798822609491 
		0.34052584151160592 0.11261987833947819 6.174286608245514e-008;
	setAttr -s 5 ".wl[75].w[1:5]"  0.00050658078245577657 0.5989296098852257 
		0.3116445739724481 0.088919168552746175 6.680712427482889e-008;
	setAttr -s 5 ".wl[76].w[1:5]"  0.00050554766516644879 0.60388169857073748 
		0.30754301837284331 0.088069666359792145 6.9031460557220087e-008;
	setAttr -s 5 ".wl[77].w[1:5]"  0.00050524779266150014 0.61952597941929433 
		0.30187623197560937 0.078092471627523155 6.9184911574264306e-008;
	setAttr -s 5 ".wl[78].w[1:5]"  0.00011791102735666715 0.25326992342792565 
		0.49821184054009598 0.24840030218275011 2.2821871642934313e-008;
	setAttr -s 5 ".wl[79].w[1:5]"  9.2125730888914552e-005 0.19609244257541605 
		0.52021665695428698 0.28359875667068163 1.8068726279168996e-008;
	setAttr -s 5 ".wl[80].w[1:5]"  0.00019963068669567015 0.27554586311976775 
		0.48463324236749378 0.23962123447995906 2.9346083695336404e-008;
	setAttr -s 5 ".wl[81].w[1:5]"  0.00021340474538343674 0.29607141815944049 
		0.47515431206058006 0.22856083197632651 3.3058269576366779e-008;
	setAttr -s 5 ".wl[82].w[1:5]"  0.00026486625145767407 0.39309172217451654 
		0.42827293364578817 0.17837043692422691 4.1004010820360063e-008;
	setAttr -s 5 ".wl[83].w[1:5]"  0.00026858722560980453 0.39525194617297477 
		0.43241137392287093 0.17206805328574898 3.9392795525311389e-008;
	setAttr -s 5 ".wl[84].w[1:5]"  1.5920851354729014e-005 0.055612361829492016 
		0.54714967325208819 0.39722203496826414 9.0988010557227262e-009;
	setAttr -s 5 ".wl[85].w[1:5]"  4.3906201944200561e-005 0.082427591563543318 
		0.55257307126965827 0.36495541930958819 1.1655266112046514e-008;
	setAttr -s 5 ".wl[86].w[1:5]"  8.7704088978549774e-005 0.1404535637080046 
		0.55064456904325709 0.30881414614729175 1.7012467952471139e-008;
	setAttr -s 5 ".wl[87].w[1:5]"  4.9479897223243433e-005 0.097948054883489108 
		0.54977680284707831 0.35222564895964004 1.3412569392059469e-008;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[1]" 1.1885364870370257e-007;
	setAttr ".wl[88].w[5]" 0.00062680792125499824;
	setAttr ".wl[88].w[6]" 0.15045548595599578;
	setAttr ".wl[88].w[7]" 0.52999938432020355;
	setAttr ".wl[88].w[8]" 0.318918202948897;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[1]" 5.762559733938082e-008;
	setAttr ".wl[89].w[5]" 0.00031054987580977905;
	setAttr ".wl[89].w[6]" 0.10125449573778388;
	setAttr ".wl[89].w[7]" 0.54022112244194531;
	setAttr ".wl[89].w[8]" 0.35821377431886375;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[1]" 6.5256356602741515e-007;
	setAttr ".wl[90].w[5]" 0.0038912488149428393;
	setAttr ".wl[90].w[6]" 0.53778921996293505;
	setAttr ".wl[90].w[7]" 0.34615229796419905;
	setAttr ".wl[90].w[8]" 0.1121665806943571;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[1]" 6.76707319684849e-007;
	setAttr ".wl[91].w[5]" 0.0038253608841816483;
	setAttr ".wl[91].w[6]" 0.59258343588429208;
	setAttr ".wl[91].w[7]" 0.31228890214372884;
	setAttr ".wl[91].w[8]" 0.091301624380477744;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[1]" 7.3817880722016967e-007;
	setAttr ".wl[92].w[5]" 0.0041869658831456581;
	setAttr ".wl[92].w[6]" 0.59498421520882638;
	setAttr ".wl[92].w[7]" 0.31326058284026403;
	setAttr ".wl[92].w[8]" 0.087567497888956861;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[1]" 7.0494787712916622e-007;
	setAttr ".wl[93].w[5]" 0.0037868164013437774;
	setAttr ".wl[93].w[6]" 0.61315327087850646;
	setAttr ".wl[93].w[7]" 0.30273014837526113;
	setAttr ".wl[93].w[8]" 0.080329059397011349;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[1]" 1.7152776916438282e-007;
	setAttr ".wl[94].w[5]" 0.0008273515782849549;
	setAttr ".wl[94].w[6]" 0.25119166797338377;
	setAttr ".wl[94].w[7]" 0.49835675102772925;
	setAttr ".wl[94].w[8]" 0.24962405789283293;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[1]" 1.1099737490887814e-007;
	setAttr ".wl[95].w[5]" 0.00055465653583511765;
	setAttr ".wl[95].w[6]" 0.19502692099173302;
	setAttr ".wl[95].w[7]" 0.51740127630443966;
	setAttr ".wl[95].w[8]" 0.28701703517061727;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[1]" 2.5386587977378664e-007;
	setAttr ".wl[96].w[5]" 0.0014876793402050724;
	setAttr ".wl[96].w[6]" 0.27121710369001006;
	setAttr ".wl[96].w[7]" 0.48631360395332734;
	setAttr ".wl[96].w[8]" 0.24098135915057789;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[0]" 3.3384313037222085e-007;
	setAttr ".wl[97].w[5]" 0.0019530428559946659;
	setAttr ".wl[97].w[6]" 0.28837035554747337;
	setAttr ".wl[97].w[7]" 0.48479890598204484;
	setAttr ".wl[97].w[8]" 0.22487736177135678;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[1]" 4.0410433251551962e-007;
	setAttr ".wl[98].w[5]" 0.002149379289067414;
	setAttr ".wl[98].w[6]" 0.38707962829106574;
	setAttr ".wl[98].w[7]" 0.43303571073077868;
	setAttr ".wl[98].w[8]" 0.17773487758475559;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[1]" 3.4677657785224284e-007;
	setAttr ".wl[99].w[5]" 0.0018027754712928805;
	setAttr ".wl[99].w[6]" 0.3924268401086195;
	setAttr ".wl[99].w[7]" 0.43027916496851143;
	setAttr ".wl[99].w[8]" 0.17549087267499833;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[1]" 3.1483678607097712e-008;
	setAttr ".wl[100].w[5]" 0.00014700329795052741;
	setAttr ".wl[100].w[6]" 0.053135762334722093;
	setAttr ".wl[100].w[7]" 0.55137037181377968;
	setAttr ".wl[100].w[8]" 0.39534683106986906;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[1]" 5.6244550941272854e-008;
	setAttr ".wl[101].w[5]" 0.00031860637845218835;
	setAttr ".wl[101].w[6]" 0.079346075878598973;
	setAttr ".wl[101].w[7]" 0.55668590446199662;
	setAttr ".wl[101].w[8]" 0.36364935703640133;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[0]" 1.2720943963372307e-007;
	setAttr ".wl[102].w[5]" 0.0007650013032984795;
	setAttr ".wl[102].w[6]" 0.13495357944465941;
	setAttr ".wl[102].w[7]" 0.55934648449916402;
	setAttr ".wl[102].w[8]" 0.30493480754343849;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[0]" 9.2032144660362337e-008;
	setAttr ".wl[103].w[5]" 0.00051657882464096994;
	setAttr ".wl[103].w[6]" 0.093157106597607786;
	setAttr ".wl[103].w[7]" 0.55911678898710748;
	setAttr ".wl[103].w[8]" 0.34720943355849915;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[0]" 0.0045065962753393094;
	setAttr ".wl[104].w[1]" 0.013578365913144931;
	setAttr ".wl[104].w[5]" 0.40441936333489203;
	setAttr ".wl[104].w[6]" 0.57741044291791688;
	setAttr ".wl[104].w[9]" 8.5231558706921085e-005;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[0]" 0.004570384814355434;
	setAttr ".wl[105].w[1]" 0.0147041094756695;
	setAttr ".wl[105].w[5]" 0.41792930063419803;
	setAttr ".wl[105].w[6]" 0.56270855001559206;
	setAttr ".wl[105].w[9]" 8.7655060184859375e-005;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[0]" 0.005849438997445347;
	setAttr ".wl[106].w[1]" 0.017504440649502975;
	setAttr ".wl[106].w[5]" 0.54618307510298836;
	setAttr ".wl[106].w[6]" 0.43035426637649737;
	setAttr ".wl[106].w[9]" 0.00010877887356570042;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.006573096210732988;
	setAttr ".wl[107].w[1]" 0.021930168923605987;
	setAttr ".wl[107].w[5]" 0.55599181318189084;
	setAttr ".wl[107].w[6]" 0.41537528460301548;
	setAttr ".wl[107].w[9]" 0.00012963708075465212;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.0065618496471571671;
	setAttr ".wl[108].w[1]" 0.020591514092764829;
	setAttr ".wl[108].w[5]" 0.55736865457588325;
	setAttr ".wl[108].w[6]" 0.41535107286300121;
	setAttr ".wl[108].w[9]" 0.00012690882119350145;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.0069565372157409109;
	setAttr ".wl[109].w[1]" 0.023967117895061368;
	setAttr ".wl[109].w[5]" 0.53900283188633058;
	setAttr ".wl[109].w[6]" 0.42993203928790807;
	setAttr ".wl[109].w[9]" 0.00014147371495900279;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.0052577758737617983;
	setAttr ".wl[110].w[1]" 0.017196395946791947;
	setAttr ".wl[110].w[5]" 0.41506577898694402;
	setAttr ".wl[110].w[6]" 0.56237495465748866;
	setAttr ".wl[110].w[9]" 0.00010509453501351849;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.0049890783163777383;
	setAttr ".wl[111].w[1]" 0.017253390979027557;
	setAttr ".wl[111].w[5]" 0.4004209416121095;
	setAttr ".wl[111].w[6]" 0.57723549234765781;
	setAttr ".wl[111].w[9]" 0.00010109674482729462;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[11]" 0.0071989188425491688;
	setAttr ".wl[112].w[12]" 0.0049136338181317149;
	setAttr ".wl[112].w[16]" 0.0059608194704267202;
	setAttr ".wl[112].w[20]" 0.53455623884000758;
	setAttr ".wl[112].w[21]" 0.44737038902888487;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[11]" 0.0072163318519943001;
	setAttr ".wl[113].w[12]" 0.0053944252538891809;
	setAttr ".wl[113].w[16]" 0.0054806948365690861;
	setAttr ".wl[113].w[20]" 0.534046363929635;
	setAttr ".wl[113].w[21]" 0.4478621841279124;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[11]" 0.0091468879156358738;
	setAttr ".wl[114].w[12]" 0.0066672130801990756;
	setAttr ".wl[114].w[16]" 0.0075567858796084285;
	setAttr ".wl[114].w[20]" 0.51254560780028813;
	setAttr ".wl[114].w[21]" 0.46408350532426856;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[11]" 0.0092164414084928356;
	setAttr ".wl[115].w[12]" 0.0070910225764136484;
	setAttr ".wl[115].w[16]" 0.0072725302076910234;
	setAttr ".wl[115].w[20]" 0.50981681001447421;
	setAttr ".wl[115].w[21]" 0.46660319579292819;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[11]" 0.0092381903075375946;
	setAttr ".wl[116].w[12]" 0.0066541842724930434;
	setAttr ".wl[116].w[16]" 0.0077505525735717933;
	setAttr ".wl[116].w[20]" 0.51019485780752549;
	setAttr ".wl[116].w[21]" 0.46616221503887201;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[11]" 0.0089552952280899292;
	setAttr ".wl[117].w[12]" 0.0067902805509601283;
	setAttr ".wl[117].w[16]" 0.0071611248149065863;
	setAttr ".wl[117].w[20]" 0.51004971076578909;
	setAttr ".wl[117].w[21]" 0.4670435886402543;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[11]" 0.0071346916321215863;
	setAttr ".wl[118].w[12]" 0.0048540431793946872;
	setAttr ".wl[118].w[16]" 0.0059389796569384676;
	setAttr ".wl[118].w[20]" 0.53236532724831465;
	setAttr ".wl[118].w[21]" 0.44970695828323065;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[11]" 0.0071382637338907829;
	setAttr ".wl[119].w[12]" 0.0053241505709491202;
	setAttr ".wl[119].w[16]" 0.0054480619394148061;
	setAttr ".wl[119].w[20]" 0.53181766722976509;
	setAttr ".wl[119].w[21]" 0.45027185652598001;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[11]" 0.009009091423249075;
	setAttr ".wl[120].w[12]" 0.0052919860672852323;
	setAttr ".wl[120].w[16]" 0.0073449009819308974;
	setAttr ".wl[120].w[20]" 0.58173822536402553;
	setAttr ".wl[120].w[21]" 0.39661579616350945;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[11]" 0.0089522848291458505;
	setAttr ".wl[121].w[12]" 0.0047065737247880294;
	setAttr ".wl[121].w[16]" 0.0080062121017304803;
	setAttr ".wl[121].w[20]" 0.58263482916748677;
	setAttr ".wl[121].w[21]" 0.39570010017684887;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[11]" 0.0087212533560472594;
	setAttr ".wl[122].w[12]" 0.006018891828594844;
	setAttr ".wl[122].w[16]" 0.0061664210737631293;
	setAttr ".wl[122].w[20]" 0.58477305670712398;
	setAttr ".wl[122].w[21]" 0.39432037703447081;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[11]" 0.0087579068111393234;
	setAttr ".wl[123].w[12]" 0.0065920663126783161;
	setAttr ".wl[123].w[16]" 0.005490211631632244;
	setAttr ".wl[123].w[20]" 0.58366418659496055;
	setAttr ".wl[123].w[21]" 0.39549562864958981;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[11]" 0.032485126737656939;
	setAttr ".wl[124].w[12]" 0.016495342512420932;
	setAttr ".wl[124].w[16]" 0.033668681134209025;
	setAttr ".wl[124].w[20]" 0.63980751204260489;
	setAttr ".wl[124].w[21]" 0.27754333757310817;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[11]" 0.031153927049239243;
	setAttr ".wl[125].w[12]" 0.016382765149831953;
	setAttr ".wl[125].w[16]" 0.03209341666816741;
	setAttr ".wl[125].w[20]" 0.64278804487333185;
	setAttr ".wl[125].w[21]" 0.27758184625942955;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[11]" 0.031202971404612548;
	setAttr ".wl[126].w[12]" 0.028440052435293288;
	setAttr ".wl[126].w[16]" 0.018171098421503846;
	setAttr ".wl[126].w[20]" 0.64414146860650801;
	setAttr ".wl[126].w[21]" 0.27804440913208223;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[11]" 0.032445427767527783;
	setAttr ".wl[127].w[12]" 0.028483947363618575;
	setAttr ".wl[127].w[16]" 0.019673312716810575;
	setAttr ".wl[127].w[20]" 0.64111204113673181;
	setAttr ".wl[127].w[21]" 0.27828527101531136;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[11]" 0.091491933731456254;
	setAttr ".wl[128].w[12]" 0.047810128851350525;
	setAttr ".wl[128].w[16]" 0.11271371566732681;
	setAttr ".wl[128].w[20]" 0.60627910823370901;
	setAttr ".wl[128].w[21]" 0.14170511351615736;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[11]" 0.089319781291598066;
	setAttr ".wl[129].w[12]" 0.070091388515487574;
	setAttr ".wl[129].w[16]" 0.084397337059343727;
	setAttr ".wl[129].w[20]" 0.61317689989235269;
	setAttr ".wl[129].w[21]" 0.14301459324121801;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[11]" 0.092683050450548171;
	setAttr ".wl[130].w[12]" 0.10263700423667635;
	setAttr ".wl[130].w[16]" 0.051793302530666947;
	setAttr ".wl[130].w[20]" 0.61027544370971654;
	setAttr ".wl[130].w[21]" 0.14261119907239209;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[11]" 0.094636785242228724;
	setAttr ".wl[131].w[12]" 0.08021065142264569;
	setAttr ".wl[131].w[16]" 0.079789687048368835;
	setAttr ".wl[131].w[20]" 0.60375300015595146;
	setAttr ".wl[131].w[21]" 0.14160987613080547;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[5]" 0.15576201745617335;
	setAttr ".wl[132].w[11]" 0.19020892939213666;
	setAttr ".wl[132].w[12]" 0.16980864915232016;
	setAttr ".wl[132].w[16]" 0.2393928507090162;
	setAttr ".wl[132].w[20]" 0.24482755329035374;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[5]" 0.13075492173161368;
	setAttr ".wl[133].w[11]" 0.20172922755720957;
	setAttr ".wl[133].w[12]" 0.26824229995269161;
	setAttr ".wl[133].w[16]" 0.15041975376963096;
	setAttr ".wl[133].w[20]" 0.24885379698885421;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[1]" 0.15603779726906156;
	setAttr ".wl[134].w[11]" 0.20050188290387863;
	setAttr ".wl[134].w[12]" 0.23736893190224237;
	setAttr ".wl[134].w[16]" 0.1766073753747022;
	setAttr ".wl[134].w[20]" 0.22948401255011533;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[1]" 0.13603173752178518;
	setAttr ".wl[135].w[11]" 0.19945588195264505;
	setAttr ".wl[135].w[12]" 0.14976019833692772;
	setAttr ".wl[135].w[16]" 0.27655415722622095;
	setAttr ".wl[135].w[20]" 0.23819802496242112;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[1]" 0.21339875298966468;
	setAttr ".wl[136].w[5]" 0.2865791621817525;
	setAttr ".wl[136].w[11]" 0.15014513247137098;
	setAttr ".wl[136].w[12]" 0.18307060247594312;
	setAttr ".wl[136].w[16]" 0.16680634988126869;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[1]" 0.27035824208237591;
	setAttr ".wl[137].w[5]" 0.24569544794216969;
	setAttr ".wl[137].w[11]" 0.14706554020663448;
	setAttr ".wl[137].w[12]" 0.20296874724307173;
	setAttr ".wl[137].w[16]" 0.13391202252574821;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[1]" 0.28415308547617457;
	setAttr ".wl[138].w[5]" 0.21653918217742435;
	setAttr ".wl[138].w[11]" 0.15182434972170314;
	setAttr ".wl[138].w[12]" 0.166300491134276;
	setAttr ".wl[138].w[16]" 0.18118289149042208;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[1]" 0.24569353012695461;
	setAttr ".wl[139].w[5]" 0.27524948656614329;
	setAttr ".wl[139].w[11]" 0.142448865336393;
	setAttr ".wl[139].w[12]" 0.13444503920741291;
	setAttr ".wl[139].w[16]" 0.20216307876309619;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[11]" 0.17009270504861018;
	setAttr ".wl[140].w[12]" 0.18498472426798587;
	setAttr ".wl[140].w[16]" 0.13910782007896896;
	setAttr ".wl[140].w[20]" 0.45619943935607571;
	setAttr ".wl[140].w[21]" 0.049615311248359453;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[11]" 0.16864884132435842;
	setAttr ".wl[141].w[12]" 0.10864508363629473;
	setAttr ".wl[141].w[16]" 0.22286226376609092;
	setAttr ".wl[141].w[20]" 0.45079266073676205;
	setAttr ".wl[141].w[21]" 0.049051150536493976;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[11]" 0.17566665205580831;
	setAttr ".wl[142].w[12]" 0.1373298417874006;
	setAttr ".wl[142].w[16]" 0.19944510629034681;
	setAttr ".wl[142].w[20]" 0.43986907305820633;
	setAttr ".wl[142].w[21]" 0.047689326808237946;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[11]" 0.17721598720001869;
	setAttr ".wl[143].w[12]" 0.21374542217378406;
	setAttr ".wl[143].w[16]" 0.11621630181657812;
	setAttr ".wl[143].w[20]" 0.44472013356625145;
	setAttr ".wl[143].w[21]" 0.048102155243367646;
	setAttr -s 22 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.2122335277497856e-016 -9.9783787675390945e-017 0.99999999999999967 -0
		 0.9953276740853636 0.096555218964471723 -9.9783782945093985e-017 0 -0.096555218686627531 0.99532767694948632 1.2122334737715739e-016 -0
		 -53.217380201696606 -7.3551592768471785 -0.00038862228393045508 1;
	setAttr ".pm[1]" -type "matrix" 0.0026368488603977312 -0.003158449378444699 0.99999135709538078 -0
		 -0.99910768968330577 -0.042156627178896282 0.0025013681235502051 0 0.042148365170442487 -0.99910594068389724 -0.0032667920295374239 -0
		 53.5176183643024 4.4295784495983446 -4.5244798389261147 1;
	setAttr ".pm[2]" -type "matrix" 0.0023247229456916673 -0.0035536286918740269 0.99999090578913541 -0
		 -0.99859174119469707 0.052992390814365027 0.0025097869564264992 0 -0.053000832304723029 -0.99858856387866135 -0.003425431540977718 -0
		 32.191022354020994 1.3769790255835774 -4.5242613249501451 1;
	setAttr ".pm[3]" -type "matrix" 0.0061216338444137165 -1.4826927545294206e-007 0.99998118335947916 -0
		 -0.82448532589275003 -0.56586067439804044 0.0050472088599657124 0 0.56584999145328718 -0.8245008901300378 -0.0034641142417238713 -0
		 6.7084797449546114 6.8842829552642311 -4.5481454307301972 1;
	setAttr ".pm[4]" -type "matrix" 0.0061216338444137139 -1.4826927545337577e-007 0.9999811833594795 -0
		 -0.8244853258927497 -0.56586067439804055 0.005047208859965715 0 0.56584999145328696 -0.82450089013003802 -0.003464114241723873 -0
		 0.3543978076147245 6.8842829554046379 -4.5481441413806305 1;
	setAttr ".pm[5]" -type "matrix" 0.0026375940732358081 -0.0031654528976052011 0.99999136761433771 -0
		 0.99910846367724948 0.042138945645347176 -0.0025018754335195477 0 -0.042130665074690411 0.99910665996552417 0.0032737765607651738 -0
		 -53.517696822572667 -4.4286594046620102 4.523714820839329 1;
	setAttr ".pm[6]" -type "matrix" 0.0023249178179923632 -0.0035399499687580518 0.99999106273125349 -0
		 0.99859261297442858 -0.052975231597856776 -0.0025091982798715246 0 0.052983633693425042 0.99858958981803658 0.0034118050158058705 -0
		 -32.190917326016319 -1.3770908924574432 4.5235197910734302 1;
	setAttr ".pm[7]" -type "matrix" 0.0061214264471507419 -2.9714174149921744e-008 0.99998124372036878 -0
		 0.82448537086054829 0.5658606808855875 -0.0050471045097027385 0 -0.56585010412915426 0.82450078165396035 0.0034638993334230616 -0
		 -6.7084435499477193 -6.8842661055858327 4.5473671528105903 1;
	setAttr ".pm[8]" -type "matrix" 0.006121400926008211 -2.9714174150355439e-008 0.99998124387659737 -0
		 0.82448537098935826 0.56586068088558772 -0.0050470834674989666 0 -0.56585010421755844 0.82450078165396057 0.0034638848920107374 -0
		 -0.35435407324867635 -6.8842666405751478 4.5473671331439043 1;
	setAttr ".pm[9]" -type "matrix" 1.1819669022036229e-016 -1.033510993884048e-016 0.99999999999999956 -0
		 0.99776254179936852 0.066858598399549038 -9.9783782945093997e-017 0 -0.06685859826633056 0.99776254378745088 1.2122334737715739e-016 -0
		 -57.936919466638301 -5.6315467722304895 -0.00038862228392995245 1;
	setAttr ".pm[10]" -type "matrix" 1.1819669022036229e-016 -1.033510993884048e-016 0.99999999999999956 -0
		 0.99776254179936852 0.066858598399549038 -9.9783782945093997e-017 0 -0.06685859826633056 0.99776254378745088 1.2122334737715739e-016 -0
		 -62.458756365289659 -5.6315468202120407 -0.00038862228392946564 1;
	setAttr ".pm[11]" -type "matrix" 1.1533775611379636e-016 -1.0653217020755531e-016 1 -0
		 0.99921331750555897 0.039656833406125885 -9.9783782945094034e-017 0 -0.039656833406125906 0.99921331750555864 1.2122334737715746e-016 -0
		 -67.109121609650359 -3.8050462706461889 -0.00038862228392897889 1;
	setAttr ".pm[12]" -type "matrix" 1.0000000000000002 -1.0864623635394922e-016 -4.6749232350904492e-017 -0
		 6.6749670748679509e-017 1.0000000000000002 1.5368431598941084e-032 0 -1.008212575478739e-016 -1.3183898417423739e-016 1.0000000000000002 -0
		 -4.720326900482184 -79.005882263183636 -0.53906595706939675 1;
	setAttr ".pm[13]" -type "matrix" 0.99897159397519386 0.001548477012184854 -0.045312145596242949 -0
		 -0.045311644580944575 -0.00035461423122436924 -0.99897284061479075 0 -0.0015629545977620962 0.99999878777212903 -0.00028408551443642749 -0
		 -8.2073694168368068 -0.52932108423876278 79.459577684430457 1;
	setAttr ".pm[14]" -type "matrix" 0.99828958003273482 -0.036941836650330677 -0.045308411605970086 -0
		 -0.045287927922000558 0.0013914518318672423 -0.9989728816765574 0 0.036966939995397116 0.99931632345454136 -0.00028394742243197807 -0
		 -26.20033632407554 0.48049676338652852 79.459473427350446 1;
	setAttr ".pm[15]" -type "matrix" 0.99828973597363257 -0.036939156941765541 -0.04530841503732954 -0
		 -0.045287934232415013 0.0013913302541383454 -0.99897295733215696 0 0.036964258155720429 0.99931646261949991 -0.00028394744393627793 -0
		 -36.574848316350362 0.48040050880032681 79.459478613014568 1;
	setAttr ".pm[16]" -type "matrix" 1.0000000000000002 1.0864623635394922e-016 4.6749232350904517e-017 -0
		 6.6749670748679509e-017 -1.0000000000000002 -2.2204460492503141e-016 0 1.2122334737715748e-016 1.3183898417423744e-016 -1.0000000000000002 -0
		 4.7195491790771458 79.005882263183636 0.53906595706941451 1;
	setAttr ".pm[17]" -type "matrix" 0.99897159289659687 0.0015462167878556045 -0.045312234471070065 -0
		 0.045311733938975793 0.00035482557255115717 0.99897283218086474 -0 0.0015607063837560923 -0.99999873500212588 0.00028439892927137133 -0
		 8.2065861582970658 0.52927648414546424 -79.459542973894443 1;
	setAttr ".pm[18]" -type "matrix" 0.99828990597994682 -0.036938088186934191 -0.04530788484580571 -0
		 0.045287421168142987 -0.0013909715021304891 0.99897298791542277 0 -0.036963174621089279 -0.99931660291939384 0.00028423793578496564 0
		 26.19963049449213 -0.48036410653524902 -79.459439607944773 1;
	setAttr ".pm[19]" -type "matrix" 0.9982898565134749 -0.036938088679083103 -0.045307887396142006 -0
		 0.045287418924096511 -0.0013909715206632599 0.99897304414663046 0 -0.036963172789519286 -0.99931661623390489 0.00028423795178443985 0
		 36.574106736560005 -0.48036503096026251 -79.459444082242413 1;
	setAttr ".pm[20]" -type "matrix" 1.1557432162734773e-016 -1.0627549940639334e-016 1.0000000596046466 -0
		 0.99912277014506246 0.041878173588513333 -9.9783788892671152e-017 0 -0.04187817348397984 0.99912277263900606 1.2122335460263224e-016 -0
		 -77.583279000416383 -3.9775383129334427 -0.0003886223070915773 1;
	setAttr ".pm[21]" -type "matrix" 1.1557432162734773e-016 -1.0627549940639333e-016 1.0000000596046466 -0
		 0.99912277014506246 0.041878173588513326 -9.9783788892671139e-017 0 -0.04187817348397984 0.99912277263900595 1.2122335460263221e-016 -0
		 -91.491820663196833 -3.9775385413290696 -0.00038862230709011991 0.99999999999999989;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 21 ".ma";
	setAttr -s 22 ".dpf[0:21]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4;
	setAttr -s 21 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "A201ADDA-466E-150D-E332-91A0B8EDD2DA";
createNode objectSet -n "skinCluster1Set";
	rename -uid "7043D5EB-4621-2EFD-C286-959C7DBEF11B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "EB89F2BC-493D-48E8-D9FA-D5948A34EAF9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "8F1062BF-4BA7-0964-8759-7D827F1A8E57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "F22E2962-4790-5B53-CB62-E484EA1063BE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "F16C71C4-4FAB-8C08-0706-3FB8C862A88F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F89C9ECB-4C58-912C-A34E-8C9177F7AFBF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "8095F70B-4730-4821-0AF2-9D9F2C45A3DB";
	setAttr -s 23 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00038878440856933595 0.81605915486812597 0.66985237240791318 1;
	setAttr -s 23 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00038878440856933595
		 0.81605915486812597 0.66985237240791318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 0.99999995547210208 0.99999995259453445 1.0000000000000004 0
		 -0 0 0 -1.6212463378907768e-007 52.862846332192419 1.5125252044200899 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47524856275763039 0.52358266166557366 0.47524856275763039 0.52358266166557377 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000001933786729 1.0000000811362939 1.0000001784809904 -0.0031584658665011296
		 -0.0026368524259755238 -0.042161009295301227 0 -0.0082877549387134763 -0.028152013051434999
		 4.3969264030456525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99883122442320416 0.048334098907943296 1.0000000445278998
		 1.0000000474054678 0.99999999999999956 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000209279882 1.0000000291648266 1.0000000778636171 -0.00015886337341590868
		 -0 0.095187049788598377 0 21.603130432016673 5.2287396448136292e-006 -2.7478631103861062e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999980662136456 0.99999991886371264
		 0.99999982151904143 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0000001300794832 0.99999998967227399 1.0000000792611194 0.0014039370400915636
		 -0.0021140172623173494 -0.053000401939707988 0 22.666450380349541 4.0886251628791115e-007
		 2.256050332771764e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.29623844860516046 0.95511401495738069 0.99999997907201221
		 0.99999997083517433 0.999999922136389 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000001300794836 0.99999998967227399 1.000000079261119 0
		 -0 0 0 6.3540819373398865 -1.404059091214549e-010 -1.2893495675569966e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999986992053369 1.000000010327726
		 0.99999992073888688 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1.0000001639832181 1.0000000855902038 1.0000001438516068 -0.0031654694659077011
		 -0.0026375975640154006 -0.042133509750814917 0 -0.0082877549387134763 -0.028152013051434999
		 -4.3969264030456525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.048329213378843376 0.99883146082518959 1.0000000445278998
		 1.0000000474054678 0.99999999999999956 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1.0000000613153477 0.99999996234921096 0.99999996898407384 -0.00013822280217413212
		 -0 0.095142331543067254 0 -21.603175981751924 -6.6816738772956796e-006 5.5186678258323241e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 4.8912452898052803e-006 0.9999999999880379 0.99999983601680875
		 0.99999991440980351 0.9999998561484138 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1.0000000305161125 1.0000000754398619 1.0000000201724708 0.0013906148423110129
		 -0.0020741422487817571 -0.052983221134455173 0 -22.666411500224065 1.8032373305665317e-007
		 -6.7832525854072401e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -7.0994793730226234e-006 -2.2889710299445286e-005 -0.29623844772084112 0.95511401493099501 0.99999993868465609
		 1.0000000376507905 1.0000000310159272 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1.0000000305161125 1.0000000754398617 1.0000000201724708 0
		 -0 0 0 -6.3540895927552246 5.3498931507078851e-007 1.0622997592690808e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1.2760810741446998e-008 0 0.99999999999999989 0.99999996948388836
		 0.99999992456014375 0.99999997982752964 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 0.99999991900997243 0.99999991701743185
		 1.0000000000000004 0 -0 0 0 4.5260379796950332 -1.2501349733184952e-007 -5.0247349683840703e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.014898135233423697 0.99988901662462848 1.0000000445278998
		 1.0000000474054678 0.99999999999999956 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 0.99999991900997232 0.99999991701743185
		 1.0000000000000004 0 -0 0 0 4.5218368986513653 4.7981552064868538e-008 -4.8686098555461577e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000809900342 1.000000082982575
		 0.99999999999999956 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1.0000000408418694 1.0000000408418697 1 0
		 -0 0 0 4.5218330924893095 -2.0706375725154658e-007 -4.8691519566324004e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.013620212295088521 0.99990724060636582 1.0000000809900342
		 1.000000082982575 0.99999999999999956 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 0.99999999999999989 0 -0 0 0 11.813230460144524
		 -0.13328127631350029 4.7199382781982404 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48998550105442279 -0.50981781918293734 -0.48998550105442273 0.50981781918293745 0.99999995915813222
		 0.999999959158132 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1.0000000832344886 0.99999995046098511 0.99999999623545122 0.00035497881992397511
		 -0.045327167929801113 -0.001564562327790339 0 7.0799069404602077 -1.4210854715202004e-014
		 -1.1102230246251565e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654757 1
		 1 1.0000000000000002 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1.0000001816650368 1.0000001251220227 1.0000001244432435 0
		 3.7345686869103668e-006 0.038538327313295394 0 17.991731919637683 -5.1415845727653675e-006
		 -3.7766633909086522e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999991676551825
		 1.0000000495390173 1.0000000037645489 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1.0000001248408499 1.0000000852111137 1.0000000487098533 0
		 -0 -2.6857763609522687e-006 0 10.374508623559056 -1.9581018326775279e-006 8.3207086731817981e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999981833499618 0.99999987487799291
		 0.99999987555677194 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 0.99999999999999989 0 -0 0 0 11.813230460144524
		 -0.1332812763134994 -4.7199378013610858 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50981781918293745 -0.48998550105442273 0.50981781918293734 0.48998550105442279 0.99999995915813222
		 0.999999959158132 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000837743421 1.0000000066533028 1.0000000005445149 0.00035519039994564455
		 -0.04532725740420069 -0.0015623118065151403 0 -7.0799064636230451 4.2632564145606011e-014
		 -5.5511151231257827e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654757 0 0 0.70710678118654746 1
		 1 1.0000000000000002 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1.0000000184122102 0.99999998498450882 1.0000000420974668 0
		 4.3551907256467625e-006 0.038532304934055739 0 -17.991754381089468 1.498151809653514e-005
		 1.4039460765502554e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999991622566486
		 0.9999999933466972 0.99999999945548512 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1.0000000679634227 0.99999997166089283 0.99999998580845062 0
		 -0 0 0 -10.374478054359173 9.1802481422265103e-007 1.6038939065765589e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998158779013 1.0000000150154915
		 0.99999995790253493 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 0.99999995438165445 0.99999995188552104
		 0.999999940395357 0 -0 0 0 10.482801749638767 1.5831281174882861e-008 -1.095532085187978e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0011115923864989437 0.99999938218099227 0.99999995915813222
		 0.999999959158132 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 0.99999995438165445 0.99999995188552104
		 0.999999940395357 0 -0 0 0 13.908541662780465 2.2839562729970453e-007 -1.4572761400377665e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000456183475 1.0000000481144813
		 1.0000000596046466 yes;
	setAttr -s 23 ".m";
	setAttr -s 23 ".p";
	setAttr -s 23 ".g[0:22]" yes no no no no no no no no no no yes no no 
		no no no no no no no no no;
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "9B63F95B-47D9-482C-4A34-4E919657E0ED";
	setAttr ".mi" 5;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "593C1477-46A1-6ACA-7723-B8811A951194";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n"
		+ "            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1388\n                -height 700\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1388\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1388\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1388\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 4.9999999999999991 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1445D94B-480D-46FE-CFB3-F197AA76C89C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 28 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCube1.out" "This_is_a_Box_for_scaleShape.i";
connectAttr "groupId1.id" "|group2|Forearm_L|transform9|Forearm_LShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Forearm_L|transform9|Forearm_LShape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|group2|Forearm_L|transform9|Forearm_LShape.ciog.cog[0].cgid"
		;
connectAttr "groupId3.id" "|group2|Upperarm_L|transform8|Upperarm_LShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Upperarm_L|transform8|Upperarm_LShape.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group2|Upperarm_L|transform8|Upperarm_LShape.ciog.cog[0].cgid"
		;
connectAttr "groupId5.id" "|group2|Forearm_R|transform7|Forearm_RShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Forearm_R|transform7|Forearm_RShape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group2|Forearm_R|transform7|Forearm_RShape.ciog.cog[0].cgid"
		;
connectAttr "groupId7.id" "|group2|Upperarm_R|transform6|Upperarm_RShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Upperarm_R|transform6|Upperarm_RShape.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group2|Upperarm_R|transform6|Upperarm_RShape.ciog.cog[0].cgid"
		;
connectAttr "groupId9.id" "|group2|Thigh_L|transform5|Thigh_LShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Thigh_L|transform5|Thigh_LShape.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|group2|Thigh_L|transform5|Thigh_LShape.ciog.cog[0].cgid"
		;
connectAttr "groupId11.id" "|group2|Calf_L|transform4|Calf_LShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Calf_L|transform4|Calf_LShape.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|group2|Calf_L|transform4|Calf_LShape.ciog.cog[0].cgid"
		;
connectAttr "groupId13.id" "|group2|Calf_R|transform3|Calf_RShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Calf_R|transform3|Calf_RShape.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|group2|Calf_R|transform3|Calf_RShape.ciog.cog[0].cgid"
		;
connectAttr "groupId15.id" "|group2|Thigh_R|transform2|Thigh_RShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|Thigh_R|transform2|Thigh_RShape.iog.og[0].gco"
		;
connectAttr "groupId16.id" "|group2|Thigh_R|transform2|Thigh_RShape.ciog.cog[0].cgid"
		;
connectAttr "groupId17.id" "|group2|BodynHead|transform1|BodynHeadShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|BodynHead|transform1|BodynHeadShape.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|group2|BodynHead|transform1|BodynHeadShape.ciog.cog[0].cgid"
		;
connectAttr "skinCluster1.og[0]" "MaleBuyerMesh_CombinedShape.i";
connectAttr "skinCluster1GroupId.id" "MaleBuyerMesh_CombinedShape.iog.og[1].gid"
		;
connectAttr "skinCluster1Set.mwc" "MaleBuyerMesh_CombinedShape.iog.og[1].gco";
connectAttr "groupId20.id" "MaleBuyerMesh_CombinedShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "MaleBuyerMesh_CombinedShape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "MaleBuyerMesh_CombinedShape.twl";
connectAttr "polyTweakUV2.uvtk[0]" "MaleBuyerMesh_CombinedShapeOrig.uvst[0].uvtw"
		;
connectAttr "polyTweakUV2.out" "MaleBuyerMesh_CombinedShapeOrig.i";
connectAttr "Head.msg" "QuickRigCharacter1_Guides.Head";
connectAttr "Hips.msg" "QuickRigCharacter1_Guides.Hips";
connectAttr "LeftArm.msg" "QuickRigCharacter1_Guides.LeftArm";
connectAttr "LeftFoot.msg" "QuickRigCharacter1_Guides.LeftFoot";
connectAttr "LeftForeArm.msg" "QuickRigCharacter1_Guides.LeftForeArm";
connectAttr "LeftHand.msg" "QuickRigCharacter1_Guides.LeftHand";
connectAttr "LeftLeg.msg" "QuickRigCharacter1_Guides.LeftLeg";
connectAttr "LeftShoulder.msg" "QuickRigCharacter1_Guides.LeftShoulder";
connectAttr "LeftToeBase.msg" "QuickRigCharacter1_Guides.LeftToeBase";
connectAttr "LeftUpLeg.msg" "QuickRigCharacter1_Guides.LeftUpLeg";
connectAttr "Neck.msg" "QuickRigCharacter1_Guides.Neck";
connectAttr "Reference.msg" "QuickRigCharacter1_Guides.Reference";
connectAttr "RightArm.msg" "QuickRigCharacter1_Guides.RightArm";
connectAttr "RightFoot.msg" "QuickRigCharacter1_Guides.RightFoot";
connectAttr "RightForeArm.msg" "QuickRigCharacter1_Guides.RightForeArm";
connectAttr "RightHand.msg" "QuickRigCharacter1_Guides.RightHand";
connectAttr "RightLeg.msg" "QuickRigCharacter1_Guides.RightLeg";
connectAttr "RightShoulder.msg" "QuickRigCharacter1_Guides.RightShoulder";
connectAttr "RightToeBase.msg" "QuickRigCharacter1_Guides.RightToeBase";
connectAttr "RightUpLeg.msg" "QuickRigCharacter1_Guides.RightUpLeg";
connectAttr "Spine.msg" "QuickRigCharacter1_Guides.Spine";
connectAttr "Spine1.msg" "QuickRigCharacter1_Guides.Spine1";
connectAttr "Spine2.msg" "QuickRigCharacter1_Guides.Spine2";
connectAttr "QuickRigCharacter1_Guides.s" "Head.is";
connectAttr "QuickRigCharacter1_Guides.s" "Hips.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftArm.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftFoot.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftForeArm.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftHand.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftLeg.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftShoulder.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftToeBase.is";
connectAttr "QuickRigCharacter1_Guides.s" "LeftUpLeg.is";
connectAttr "QuickRigCharacter1_Guides.s" "Neck.is";
connectAttr "QuickRigCharacter1_Guides.s" "Reference.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightArm.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightFoot.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightForeArm.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightHand.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightLeg.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightShoulder.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightToeBase.is";
connectAttr "QuickRigCharacter1_Guides.s" "RightUpLeg.is";
connectAttr "QuickRigCharacter1_Guides.s" "Spine.is";
connectAttr "QuickRigCharacter1_Guides.s" "Spine1.is";
connectAttr "QuickRigCharacter1_Guides.s" "Spine2.is";
connectAttr "HIKState2SK1.HipsSx" "QuickRigCharacter1_Hips.sx";
connectAttr "HIKState2SK1.HipsSy" "QuickRigCharacter1_Hips.sy";
connectAttr "HIKState2SK1.HipsSz" "QuickRigCharacter1_Hips.sz";
connectAttr "HIKState2SK1.HipsTx" "QuickRigCharacter1_Hips.tx";
connectAttr "HIKState2SK1.HipsTy" "QuickRigCharacter1_Hips.ty";
connectAttr "HIKState2SK1.HipsTz" "QuickRigCharacter1_Hips.tz";
connectAttr "HIKState2SK1.HipsRx" "QuickRigCharacter1_Hips.rx";
connectAttr "HIKState2SK1.HipsRy" "QuickRigCharacter1_Hips.ry";
connectAttr "HIKState2SK1.HipsRz" "QuickRigCharacter1_Hips.rz";
connectAttr "QuickRigCharacter1_Hips.s" "QuickRigCharacter1_LeftUpLeg.is";
connectAttr "HIKState2SK1.LeftUpLegSx" "QuickRigCharacter1_LeftUpLeg.sx";
connectAttr "HIKState2SK1.LeftUpLegSy" "QuickRigCharacter1_LeftUpLeg.sy";
connectAttr "HIKState2SK1.LeftUpLegSz" "QuickRigCharacter1_LeftUpLeg.sz";
connectAttr "HIKState2SK1.LeftUpLegTx" "QuickRigCharacter1_LeftUpLeg.tx";
connectAttr "HIKState2SK1.LeftUpLegTy" "QuickRigCharacter1_LeftUpLeg.ty";
connectAttr "HIKState2SK1.LeftUpLegTz" "QuickRigCharacter1_LeftUpLeg.tz";
connectAttr "HIKState2SK1.LeftUpLegRx" "QuickRigCharacter1_LeftUpLeg.rx";
connectAttr "HIKState2SK1.LeftUpLegRy" "QuickRigCharacter1_LeftUpLeg.ry";
connectAttr "HIKState2SK1.LeftUpLegRz" "QuickRigCharacter1_LeftUpLeg.rz";
connectAttr "QuickRigCharacter1_LeftUpLeg.s" "QuickRigCharacter1_LeftLeg.is";
connectAttr "HIKState2SK1.LeftLegSx" "QuickRigCharacter1_LeftLeg.sx";
connectAttr "HIKState2SK1.LeftLegSy" "QuickRigCharacter1_LeftLeg.sy";
connectAttr "HIKState2SK1.LeftLegSz" "QuickRigCharacter1_LeftLeg.sz";
connectAttr "HIKState2SK1.LeftLegTx" "QuickRigCharacter1_LeftLeg.tx";
connectAttr "HIKState2SK1.LeftLegTy" "QuickRigCharacter1_LeftLeg.ty";
connectAttr "HIKState2SK1.LeftLegTz" "QuickRigCharacter1_LeftLeg.tz";
connectAttr "HIKState2SK1.LeftLegRx" "QuickRigCharacter1_LeftLeg.rx";
connectAttr "HIKState2SK1.LeftLegRy" "QuickRigCharacter1_LeftLeg.ry";
connectAttr "HIKState2SK1.LeftLegRz" "QuickRigCharacter1_LeftLeg.rz";
connectAttr "QuickRigCharacter1_LeftLeg.s" "QuickRigCharacter1_LeftFoot.is";
connectAttr "HIKState2SK1.LeftFootSx" "QuickRigCharacter1_LeftFoot.sx";
connectAttr "HIKState2SK1.LeftFootSy" "QuickRigCharacter1_LeftFoot.sy";
connectAttr "HIKState2SK1.LeftFootSz" "QuickRigCharacter1_LeftFoot.sz";
connectAttr "HIKState2SK1.LeftFootTx" "QuickRigCharacter1_LeftFoot.tx";
connectAttr "HIKState2SK1.LeftFootTy" "QuickRigCharacter1_LeftFoot.ty";
connectAttr "HIKState2SK1.LeftFootTz" "QuickRigCharacter1_LeftFoot.tz";
connectAttr "HIKState2SK1.LeftFootRx" "QuickRigCharacter1_LeftFoot.rx";
connectAttr "HIKState2SK1.LeftFootRy" "QuickRigCharacter1_LeftFoot.ry";
connectAttr "HIKState2SK1.LeftFootRz" "QuickRigCharacter1_LeftFoot.rz";
connectAttr "QuickRigCharacter1_LeftFoot.s" "QuickRigCharacter1_LeftToeBase.is";
connectAttr "HIKState2SK1.LeftToeBaseTx" "QuickRigCharacter1_LeftToeBase.tx";
connectAttr "HIKState2SK1.LeftToeBaseTy" "QuickRigCharacter1_LeftToeBase.ty";
connectAttr "HIKState2SK1.LeftToeBaseTz" "QuickRigCharacter1_LeftToeBase.tz";
connectAttr "HIKState2SK1.LeftToeBaseRx" "QuickRigCharacter1_LeftToeBase.rx";
connectAttr "HIKState2SK1.LeftToeBaseRy" "QuickRigCharacter1_LeftToeBase.ry";
connectAttr "HIKState2SK1.LeftToeBaseRz" "QuickRigCharacter1_LeftToeBase.rz";
connectAttr "HIKState2SK1.LeftToeBaseSx" "QuickRigCharacter1_LeftToeBase.sx";
connectAttr "HIKState2SK1.LeftToeBaseSy" "QuickRigCharacter1_LeftToeBase.sy";
connectAttr "HIKState2SK1.LeftToeBaseSz" "QuickRigCharacter1_LeftToeBase.sz";
connectAttr "QuickRigCharacter1_Hips.s" "QuickRigCharacter1_RightUpLeg.is";
connectAttr "HIKState2SK1.RightUpLegSx" "QuickRigCharacter1_RightUpLeg.sx";
connectAttr "HIKState2SK1.RightUpLegSy" "QuickRigCharacter1_RightUpLeg.sy";
connectAttr "HIKState2SK1.RightUpLegSz" "QuickRigCharacter1_RightUpLeg.sz";
connectAttr "HIKState2SK1.RightUpLegTx" "QuickRigCharacter1_RightUpLeg.tx";
connectAttr "HIKState2SK1.RightUpLegTy" "QuickRigCharacter1_RightUpLeg.ty";
connectAttr "HIKState2SK1.RightUpLegTz" "QuickRigCharacter1_RightUpLeg.tz";
connectAttr "HIKState2SK1.RightUpLegRx" "QuickRigCharacter1_RightUpLeg.rx";
connectAttr "HIKState2SK1.RightUpLegRy" "QuickRigCharacter1_RightUpLeg.ry";
connectAttr "HIKState2SK1.RightUpLegRz" "QuickRigCharacter1_RightUpLeg.rz";
connectAttr "QuickRigCharacter1_RightUpLeg.s" "QuickRigCharacter1_RightLeg.is";
connectAttr "HIKState2SK1.RightLegSx" "QuickRigCharacter1_RightLeg.sx";
connectAttr "HIKState2SK1.RightLegSy" "QuickRigCharacter1_RightLeg.sy";
connectAttr "HIKState2SK1.RightLegSz" "QuickRigCharacter1_RightLeg.sz";
connectAttr "HIKState2SK1.RightLegTx" "QuickRigCharacter1_RightLeg.tx";
connectAttr "HIKState2SK1.RightLegTy" "QuickRigCharacter1_RightLeg.ty";
connectAttr "HIKState2SK1.RightLegTz" "QuickRigCharacter1_RightLeg.tz";
connectAttr "HIKState2SK1.RightLegRx" "QuickRigCharacter1_RightLeg.rx";
connectAttr "HIKState2SK1.RightLegRy" "QuickRigCharacter1_RightLeg.ry";
connectAttr "HIKState2SK1.RightLegRz" "QuickRigCharacter1_RightLeg.rz";
connectAttr "QuickRigCharacter1_RightLeg.s" "QuickRigCharacter1_RightFoot.is";
connectAttr "HIKState2SK1.RightFootSx" "QuickRigCharacter1_RightFoot.sx";
connectAttr "HIKState2SK1.RightFootSy" "QuickRigCharacter1_RightFoot.sy";
connectAttr "HIKState2SK1.RightFootSz" "QuickRigCharacter1_RightFoot.sz";
connectAttr "HIKState2SK1.RightFootTx" "QuickRigCharacter1_RightFoot.tx";
connectAttr "HIKState2SK1.RightFootTy" "QuickRigCharacter1_RightFoot.ty";
connectAttr "HIKState2SK1.RightFootTz" "QuickRigCharacter1_RightFoot.tz";
connectAttr "HIKState2SK1.RightFootRx" "QuickRigCharacter1_RightFoot.rx";
connectAttr "HIKState2SK1.RightFootRy" "QuickRigCharacter1_RightFoot.ry";
connectAttr "HIKState2SK1.RightFootRz" "QuickRigCharacter1_RightFoot.rz";
connectAttr "QuickRigCharacter1_RightFoot.s" "QuickRigCharacter1_RightToeBase.is"
		;
connectAttr "HIKState2SK1.RightToeBaseTx" "QuickRigCharacter1_RightToeBase.tx";
connectAttr "HIKState2SK1.RightToeBaseTy" "QuickRigCharacter1_RightToeBase.ty";
connectAttr "HIKState2SK1.RightToeBaseTz" "QuickRigCharacter1_RightToeBase.tz";
connectAttr "HIKState2SK1.RightToeBaseRx" "QuickRigCharacter1_RightToeBase.rx";
connectAttr "HIKState2SK1.RightToeBaseRy" "QuickRigCharacter1_RightToeBase.ry";
connectAttr "HIKState2SK1.RightToeBaseRz" "QuickRigCharacter1_RightToeBase.rz";
connectAttr "HIKState2SK1.RightToeBaseSx" "QuickRigCharacter1_RightToeBase.sx";
connectAttr "HIKState2SK1.RightToeBaseSy" "QuickRigCharacter1_RightToeBase.sy";
connectAttr "HIKState2SK1.RightToeBaseSz" "QuickRigCharacter1_RightToeBase.sz";
connectAttr "QuickRigCharacter1_Hips.s" "QuickRigCharacter1_Spine.is";
connectAttr "HIKState2SK1.SpineSx" "QuickRigCharacter1_Spine.sx";
connectAttr "HIKState2SK1.SpineSy" "QuickRigCharacter1_Spine.sy";
connectAttr "HIKState2SK1.SpineSz" "QuickRigCharacter1_Spine.sz";
connectAttr "HIKState2SK1.SpineTx" "QuickRigCharacter1_Spine.tx";
connectAttr "HIKState2SK1.SpineTy" "QuickRigCharacter1_Spine.ty";
connectAttr "HIKState2SK1.SpineTz" "QuickRigCharacter1_Spine.tz";
connectAttr "HIKState2SK1.SpineRx" "QuickRigCharacter1_Spine.rx";
connectAttr "HIKState2SK1.SpineRy" "QuickRigCharacter1_Spine.ry";
connectAttr "HIKState2SK1.SpineRz" "QuickRigCharacter1_Spine.rz";
connectAttr "QuickRigCharacter1_Spine.s" "QuickRigCharacter1_Spine1.is";
connectAttr "HIKState2SK1.Spine1Sx" "QuickRigCharacter1_Spine1.sx";
connectAttr "HIKState2SK1.Spine1Sy" "QuickRigCharacter1_Spine1.sy";
connectAttr "HIKState2SK1.Spine1Sz" "QuickRigCharacter1_Spine1.sz";
connectAttr "HIKState2SK1.Spine1Tx" "QuickRigCharacter1_Spine1.tx";
connectAttr "HIKState2SK1.Spine1Ty" "QuickRigCharacter1_Spine1.ty";
connectAttr "HIKState2SK1.Spine1Tz" "QuickRigCharacter1_Spine1.tz";
connectAttr "HIKState2SK1.Spine1Rx" "QuickRigCharacter1_Spine1.rx";
connectAttr "HIKState2SK1.Spine1Ry" "QuickRigCharacter1_Spine1.ry";
connectAttr "HIKState2SK1.Spine1Rz" "QuickRigCharacter1_Spine1.rz";
connectAttr "QuickRigCharacter1_Spine1.s" "QuickRigCharacter1_Spine2.is";
connectAttr "HIKState2SK1.Spine2Sx" "QuickRigCharacter1_Spine2.sx";
connectAttr "HIKState2SK1.Spine2Sy" "QuickRigCharacter1_Spine2.sy";
connectAttr "HIKState2SK1.Spine2Sz" "QuickRigCharacter1_Spine2.sz";
connectAttr "HIKState2SK1.Spine2Tx" "QuickRigCharacter1_Spine2.tx";
connectAttr "HIKState2SK1.Spine2Ty" "QuickRigCharacter1_Spine2.ty";
connectAttr "HIKState2SK1.Spine2Tz" "QuickRigCharacter1_Spine2.tz";
connectAttr "HIKState2SK1.Spine2Rx" "QuickRigCharacter1_Spine2.rx";
connectAttr "HIKState2SK1.Spine2Ry" "QuickRigCharacter1_Spine2.ry";
connectAttr "HIKState2SK1.Spine2Rz" "QuickRigCharacter1_Spine2.rz";
connectAttr "QuickRigCharacter1_Spine2.s" "QuickRigCharacter1_LeftShoulder.is";
connectAttr "HIKState2SK1.LeftShoulderSx" "QuickRigCharacter1_LeftShoulder.sx";
connectAttr "HIKState2SK1.LeftShoulderSy" "QuickRigCharacter1_LeftShoulder.sy";
connectAttr "HIKState2SK1.LeftShoulderSz" "QuickRigCharacter1_LeftShoulder.sz";
connectAttr "HIKState2SK1.LeftShoulderTx" "QuickRigCharacter1_LeftShoulder.tx";
connectAttr "HIKState2SK1.LeftShoulderTy" "QuickRigCharacter1_LeftShoulder.ty";
connectAttr "HIKState2SK1.LeftShoulderTz" "QuickRigCharacter1_LeftShoulder.tz";
connectAttr "HIKState2SK1.LeftShoulderRx" "QuickRigCharacter1_LeftShoulder.rx";
connectAttr "HIKState2SK1.LeftShoulderRy" "QuickRigCharacter1_LeftShoulder.ry";
connectAttr "HIKState2SK1.LeftShoulderRz" "QuickRigCharacter1_LeftShoulder.rz";
connectAttr "QuickRigCharacter1_LeftShoulder.s" "QuickRigCharacter1_LeftArm.is";
connectAttr "HIKState2SK1.LeftArmSx" "QuickRigCharacter1_LeftArm.sx";
connectAttr "HIKState2SK1.LeftArmSy" "QuickRigCharacter1_LeftArm.sy";
connectAttr "HIKState2SK1.LeftArmSz" "QuickRigCharacter1_LeftArm.sz";
connectAttr "HIKState2SK1.LeftArmTx" "QuickRigCharacter1_LeftArm.tx";
connectAttr "HIKState2SK1.LeftArmTy" "QuickRigCharacter1_LeftArm.ty";
connectAttr "HIKState2SK1.LeftArmTz" "QuickRigCharacter1_LeftArm.tz";
connectAttr "HIKState2SK1.LeftArmRx" "QuickRigCharacter1_LeftArm.rx";
connectAttr "HIKState2SK1.LeftArmRy" "QuickRigCharacter1_LeftArm.ry";
connectAttr "HIKState2SK1.LeftArmRz" "QuickRigCharacter1_LeftArm.rz";
connectAttr "QuickRigCharacter1_LeftArm.s" "QuickRigCharacter1_LeftForeArm.is";
connectAttr "HIKState2SK1.LeftForeArmSx" "QuickRigCharacter1_LeftForeArm.sx";
connectAttr "HIKState2SK1.LeftForeArmSy" "QuickRigCharacter1_LeftForeArm.sy";
connectAttr "HIKState2SK1.LeftForeArmSz" "QuickRigCharacter1_LeftForeArm.sz";
connectAttr "HIKState2SK1.LeftForeArmTx" "QuickRigCharacter1_LeftForeArm.tx";
connectAttr "HIKState2SK1.LeftForeArmTy" "QuickRigCharacter1_LeftForeArm.ty";
connectAttr "HIKState2SK1.LeftForeArmTz" "QuickRigCharacter1_LeftForeArm.tz";
connectAttr "HIKState2SK1.LeftForeArmRx" "QuickRigCharacter1_LeftForeArm.rx";
connectAttr "HIKState2SK1.LeftForeArmRy" "QuickRigCharacter1_LeftForeArm.ry";
connectAttr "HIKState2SK1.LeftForeArmRz" "QuickRigCharacter1_LeftForeArm.rz";
connectAttr "QuickRigCharacter1_LeftForeArm.s" "QuickRigCharacter1_LeftHand.is";
connectAttr "HIKState2SK1.LeftHandTx" "QuickRigCharacter1_LeftHand.tx";
connectAttr "HIKState2SK1.LeftHandTy" "QuickRigCharacter1_LeftHand.ty";
connectAttr "HIKState2SK1.LeftHandTz" "QuickRigCharacter1_LeftHand.tz";
connectAttr "HIKState2SK1.LeftHandRx" "QuickRigCharacter1_LeftHand.rx";
connectAttr "HIKState2SK1.LeftHandRy" "QuickRigCharacter1_LeftHand.ry";
connectAttr "HIKState2SK1.LeftHandRz" "QuickRigCharacter1_LeftHand.rz";
connectAttr "HIKState2SK1.LeftHandSx" "QuickRigCharacter1_LeftHand.sx";
connectAttr "HIKState2SK1.LeftHandSy" "QuickRigCharacter1_LeftHand.sy";
connectAttr "HIKState2SK1.LeftHandSz" "QuickRigCharacter1_LeftHand.sz";
connectAttr "QuickRigCharacter1_Spine2.s" "QuickRigCharacter1_RightShoulder.is";
connectAttr "HIKState2SK1.RightShoulderSx" "QuickRigCharacter1_RightShoulder.sx"
		;
connectAttr "HIKState2SK1.RightShoulderSy" "QuickRigCharacter1_RightShoulder.sy"
		;
connectAttr "HIKState2SK1.RightShoulderSz" "QuickRigCharacter1_RightShoulder.sz"
		;
connectAttr "HIKState2SK1.RightShoulderTx" "QuickRigCharacter1_RightShoulder.tx"
		;
connectAttr "HIKState2SK1.RightShoulderTy" "QuickRigCharacter1_RightShoulder.ty"
		;
connectAttr "HIKState2SK1.RightShoulderTz" "QuickRigCharacter1_RightShoulder.tz"
		;
connectAttr "HIKState2SK1.RightShoulderRx" "QuickRigCharacter1_RightShoulder.rx"
		;
connectAttr "HIKState2SK1.RightShoulderRy" "QuickRigCharacter1_RightShoulder.ry"
		;
connectAttr "HIKState2SK1.RightShoulderRz" "QuickRigCharacter1_RightShoulder.rz"
		;
connectAttr "QuickRigCharacter1_RightShoulder.s" "QuickRigCharacter1_RightArm.is"
		;
connectAttr "HIKState2SK1.RightArmSx" "QuickRigCharacter1_RightArm.sx";
connectAttr "HIKState2SK1.RightArmSy" "QuickRigCharacter1_RightArm.sy";
connectAttr "HIKState2SK1.RightArmSz" "QuickRigCharacter1_RightArm.sz";
connectAttr "HIKState2SK1.RightArmTx" "QuickRigCharacter1_RightArm.tx";
connectAttr "HIKState2SK1.RightArmTy" "QuickRigCharacter1_RightArm.ty";
connectAttr "HIKState2SK1.RightArmTz" "QuickRigCharacter1_RightArm.tz";
connectAttr "HIKState2SK1.RightArmRx" "QuickRigCharacter1_RightArm.rx";
connectAttr "HIKState2SK1.RightArmRy" "QuickRigCharacter1_RightArm.ry";
connectAttr "HIKState2SK1.RightArmRz" "QuickRigCharacter1_RightArm.rz";
connectAttr "QuickRigCharacter1_RightArm.s" "QuickRigCharacter1_RightForeArm.is"
		;
connectAttr "HIKState2SK1.RightForeArmSx" "QuickRigCharacter1_RightForeArm.sx";
connectAttr "HIKState2SK1.RightForeArmSy" "QuickRigCharacter1_RightForeArm.sy";
connectAttr "HIKState2SK1.RightForeArmSz" "QuickRigCharacter1_RightForeArm.sz";
connectAttr "HIKState2SK1.RightForeArmTx" "QuickRigCharacter1_RightForeArm.tx";
connectAttr "HIKState2SK1.RightForeArmTy" "QuickRigCharacter1_RightForeArm.ty";
connectAttr "HIKState2SK1.RightForeArmTz" "QuickRigCharacter1_RightForeArm.tz";
connectAttr "HIKState2SK1.RightForeArmRx" "QuickRigCharacter1_RightForeArm.rx";
connectAttr "HIKState2SK1.RightForeArmRy" "QuickRigCharacter1_RightForeArm.ry";
connectAttr "HIKState2SK1.RightForeArmRz" "QuickRigCharacter1_RightForeArm.rz";
connectAttr "QuickRigCharacter1_RightForeArm.s" "QuickRigCharacter1_RightHand.is"
		;
connectAttr "HIKState2SK1.RightHandTx" "QuickRigCharacter1_RightHand.tx";
connectAttr "HIKState2SK1.RightHandTy" "QuickRigCharacter1_RightHand.ty";
connectAttr "HIKState2SK1.RightHandTz" "QuickRigCharacter1_RightHand.tz";
connectAttr "HIKState2SK1.RightHandRx" "QuickRigCharacter1_RightHand.rx";
connectAttr "HIKState2SK1.RightHandRy" "QuickRigCharacter1_RightHand.ry";
connectAttr "HIKState2SK1.RightHandRz" "QuickRigCharacter1_RightHand.rz";
connectAttr "HIKState2SK1.RightHandSx" "QuickRigCharacter1_RightHand.sx";
connectAttr "HIKState2SK1.RightHandSy" "QuickRigCharacter1_RightHand.sy";
connectAttr "HIKState2SK1.RightHandSz" "QuickRigCharacter1_RightHand.sz";
connectAttr "QuickRigCharacter1_Spine2.s" "QuickRigCharacter1_Neck.is";
connectAttr "HIKState2SK1.NeckSx" "QuickRigCharacter1_Neck.sx";
connectAttr "HIKState2SK1.NeckSy" "QuickRigCharacter1_Neck.sy";
connectAttr "HIKState2SK1.NeckSz" "QuickRigCharacter1_Neck.sz";
connectAttr "HIKState2SK1.NeckTx" "QuickRigCharacter1_Neck.tx";
connectAttr "HIKState2SK1.NeckTy" "QuickRigCharacter1_Neck.ty";
connectAttr "HIKState2SK1.NeckTz" "QuickRigCharacter1_Neck.tz";
connectAttr "HIKState2SK1.NeckRx" "QuickRigCharacter1_Neck.rx";
connectAttr "HIKState2SK1.NeckRy" "QuickRigCharacter1_Neck.ry";
connectAttr "HIKState2SK1.NeckRz" "QuickRigCharacter1_Neck.rz";
connectAttr "QuickRigCharacter1_Neck.s" "QuickRigCharacter1_Head.is";
connectAttr "HIKState2SK1.HeadTx" "QuickRigCharacter1_Head.tx";
connectAttr "HIKState2SK1.HeadTy" "QuickRigCharacter1_Head.ty";
connectAttr "HIKState2SK1.HeadTz" "QuickRigCharacter1_Head.tz";
connectAttr "HIKState2SK1.HeadRx" "QuickRigCharacter1_Head.rx";
connectAttr "HIKState2SK1.HeadRy" "QuickRigCharacter1_Head.ry";
connectAttr "HIKState2SK1.HeadRz" "QuickRigCharacter1_Head.rz";
connectAttr "HIKState2SK1.HeadSx" "QuickRigCharacter1_Head.sx";
connectAttr "HIKState2SK1.HeadSy" "QuickRigCharacter1_Head.sy";
connectAttr "HIKState2SK1.HeadSz" "QuickRigCharacter1_Head.sz";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_HipsEffector.uagx"
		;
connectAttr "HIKState2Effector1.HipsEffectorGXM[0]" "QuickRigCharacter1_Ctrl_HipsEffector.agx"
		;
connectAttr "HIKState2Effector2.HipsEffectorGXM[0]" "QuickRigCharacter1_Ctrl_HipsEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftAnkleEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftAnkleEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftAnkleEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightAnkleEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightAnkleEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightAnkleEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftWristEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftWristEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftWristEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftWristEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightWristEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightWristEffector.agx"
		;
connectAttr "HIKState2Effector2.RightWristEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightWristEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftKneeEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftKneeEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftKneeEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightKneeEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.RightKneeEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightKneeEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftElbowEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftElbowEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftElbowEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightElbowEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.RightElbowEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightElbowEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_ChestOriginEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestOriginEffectorGXM[0]" "QuickRigCharacter1_Ctrl_ChestOriginEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestOriginEffectorGXM[0]" "QuickRigCharacter1_Ctrl_ChestOriginEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_ChestEndEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestEndEffectorGXM[0]" "QuickRigCharacter1_Ctrl_ChestEndEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestEndEffectorGXM[0]" "QuickRigCharacter1_Ctrl_ChestEndEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftFootEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftFootEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftFootEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftFootEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftFootEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightFootEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightFootEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightFootEffector.agx"
		;
connectAttr "HIKState2Effector2.RightFootEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightFootEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftShoulderEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftShoulderEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftShoulderEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightShoulderEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.RightShoulderEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightShoulderEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_HeadEffector.uagx"
		;
connectAttr "HIKState2Effector1.HeadEffectorGXM[0]" "QuickRigCharacter1_Ctrl_HeadEffector.agx"
		;
connectAttr "HIKState2Effector2.HeadEffectorGXM[0]" "QuickRigCharacter1_Ctrl_HeadEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftHipEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHipEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftHipEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHipEffectorGXM[0]" "QuickRigCharacter1_Ctrl_LeftHipEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightHipEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHipEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightHipEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHipEffectorGXM[0]" "QuickRigCharacter1_Ctrl_RightHipEffector.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Hips.uagx"
		;
connectAttr "HIKState2FK1.HipsGX" "QuickRigCharacter1_Ctrl_Hips.agx";
connectAttr "HIKState2FK2.HipsGX" "QuickRigCharacter1_Ctrl_Hips.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftUpLeg.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Hips.s" "QuickRigCharacter1_Ctrl_LeftUpLeg.is"
		;
connectAttr "HIKState2FK1.LeftUpLegGX" "QuickRigCharacter1_Ctrl_LeftUpLeg.agx";
connectAttr "HIKState2FK2.LeftUpLegGX" "QuickRigCharacter1_Ctrl_LeftUpLeg.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftLeg.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.s" "QuickRigCharacter1_Ctrl_LeftLeg.is"
		;
connectAttr "HIKState2FK1.LeftLegGX" "QuickRigCharacter1_Ctrl_LeftLeg.agx";
connectAttr "HIKState2FK2.LeftLegGX" "QuickRigCharacter1_Ctrl_LeftLeg.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftFoot.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.s" "QuickRigCharacter1_Ctrl_LeftFoot.is"
		;
connectAttr "HIKState2FK1.LeftFootGX" "QuickRigCharacter1_Ctrl_LeftFoot.agx";
connectAttr "HIKState2FK2.LeftFootGX" "QuickRigCharacter1_Ctrl_LeftFoot.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftToeBase.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.s" "QuickRigCharacter1_Ctrl_LeftToeBase.is"
		;
connectAttr "HIKState2FK1.LeftToeBaseGX" "QuickRigCharacter1_Ctrl_LeftToeBase.agx"
		;
connectAttr "HIKState2FK2.LeftToeBaseGX" "QuickRigCharacter1_Ctrl_LeftToeBase.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightUpLeg.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Hips.s" "QuickRigCharacter1_Ctrl_RightUpLeg.is"
		;
connectAttr "HIKState2FK1.RightUpLegGX" "QuickRigCharacter1_Ctrl_RightUpLeg.agx"
		;
connectAttr "HIKState2FK2.RightUpLegGX" "QuickRigCharacter1_Ctrl_RightUpLeg.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightLeg.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.s" "QuickRigCharacter1_Ctrl_RightLeg.is"
		;
connectAttr "HIKState2FK1.RightLegGX" "QuickRigCharacter1_Ctrl_RightLeg.agx";
connectAttr "HIKState2FK2.RightLegGX" "QuickRigCharacter1_Ctrl_RightLeg.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightFoot.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.s" "QuickRigCharacter1_Ctrl_RightFoot.is"
		;
connectAttr "HIKState2FK1.RightFootGX" "QuickRigCharacter1_Ctrl_RightFoot.agx";
connectAttr "HIKState2FK2.RightFootGX" "QuickRigCharacter1_Ctrl_RightFoot.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightToeBase.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.s" "QuickRigCharacter1_Ctrl_RightToeBase.is"
		;
connectAttr "HIKState2FK1.RightToeBaseGX" "QuickRigCharacter1_Ctrl_RightToeBase.agx"
		;
connectAttr "HIKState2FK2.RightToeBaseGX" "QuickRigCharacter1_Ctrl_RightToeBase.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Spine.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Hips.s" "QuickRigCharacter1_Ctrl_Spine.is";
connectAttr "HIKState2FK1.SpineGX" "QuickRigCharacter1_Ctrl_Spine.agx";
connectAttr "HIKState2FK2.SpineGX" "QuickRigCharacter1_Ctrl_Spine.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Spine1.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine.s" "QuickRigCharacter1_Ctrl_Spine1.is"
		;
connectAttr "HIKState2FK1.Spine1GX" "QuickRigCharacter1_Ctrl_Spine1.agx";
connectAttr "HIKState2FK2.Spine1GX" "QuickRigCharacter1_Ctrl_Spine1.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Spine2.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.s" "QuickRigCharacter1_Ctrl_Spine2.is"
		;
connectAttr "HIKState2FK1.Spine2GX" "QuickRigCharacter1_Ctrl_Spine2.agx";
connectAttr "HIKState2FK2.Spine2GX" "QuickRigCharacter1_Ctrl_Spine2.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftShoulder.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.s" "QuickRigCharacter1_Ctrl_LeftShoulder.is"
		;
connectAttr "HIKState2FK1.LeftShoulderGX" "QuickRigCharacter1_Ctrl_LeftShoulder.agx"
		;
connectAttr "HIKState2FK2.LeftShoulderGX" "QuickRigCharacter1_Ctrl_LeftShoulder.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftArm.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.s" "QuickRigCharacter1_Ctrl_LeftArm.is"
		;
connectAttr "HIKState2FK1.LeftArmGX" "QuickRigCharacter1_Ctrl_LeftArm.agx";
connectAttr "HIKState2FK2.LeftArmGX" "QuickRigCharacter1_Ctrl_LeftArm.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftForeArm.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.s" "QuickRigCharacter1_Ctrl_LeftForeArm.is"
		;
connectAttr "HIKState2FK1.LeftForeArmGX" "QuickRigCharacter1_Ctrl_LeftForeArm.agx"
		;
connectAttr "HIKState2FK2.LeftForeArmGX" "QuickRigCharacter1_Ctrl_LeftForeArm.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_LeftHand.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.s" "QuickRigCharacter1_Ctrl_LeftHand.is"
		;
connectAttr "HIKState2FK1.LeftHandGX" "QuickRigCharacter1_Ctrl_LeftHand.agx";
connectAttr "HIKState2FK2.LeftHandGX" "QuickRigCharacter1_Ctrl_LeftHand.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightShoulder.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.s" "QuickRigCharacter1_Ctrl_RightShoulder.is"
		;
connectAttr "HIKState2FK1.RightShoulderGX" "QuickRigCharacter1_Ctrl_RightShoulder.agx"
		;
connectAttr "HIKState2FK2.RightShoulderGX" "QuickRigCharacter1_Ctrl_RightShoulder.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightArm.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.s" "QuickRigCharacter1_Ctrl_RightArm.is"
		;
connectAttr "HIKState2FK1.RightArmGX" "QuickRigCharacter1_Ctrl_RightArm.agx";
connectAttr "HIKState2FK2.RightArmGX" "QuickRigCharacter1_Ctrl_RightArm.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightForeArm.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.s" "QuickRigCharacter1_Ctrl_RightForeArm.is"
		;
connectAttr "HIKState2FK1.RightForeArmGX" "QuickRigCharacter1_Ctrl_RightForeArm.agx"
		;
connectAttr "HIKState2FK2.RightForeArmGX" "QuickRigCharacter1_Ctrl_RightForeArm.atx"
		;
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_RightHand.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.s" "QuickRigCharacter1_Ctrl_RightHand.is"
		;
connectAttr "HIKState2FK1.RightHandGX" "QuickRigCharacter1_Ctrl_RightHand.agx";
connectAttr "HIKState2FK2.RightHandGX" "QuickRigCharacter1_Ctrl_RightHand.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Neck.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.s" "QuickRigCharacter1_Ctrl_Neck.is"
		;
connectAttr "HIKState2FK1.NeckGX" "QuickRigCharacter1_Ctrl_Neck.agx";
connectAttr "HIKState2FK2.NeckGX" "QuickRigCharacter1_Ctrl_Neck.atx";
connectAttr "QuickRigCharacter1_ControlRig.rao" "QuickRigCharacter1_Ctrl_Head.uagx"
		;
connectAttr "QuickRigCharacter1_Ctrl_Neck.s" "QuickRigCharacter1_Ctrl_Head.is";
connectAttr "HIKState2FK1.HeadGX" "QuickRigCharacter1_Ctrl_Head.agx";
connectAttr "HIKState2FK2.HeadGX" "QuickRigCharacter1_Ctrl_Head.atx";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|group2|Forearm_L|transform9|Forearm_LShape.o" "polyUnite1.ip[0]";
connectAttr "|group2|Upperarm_L|transform8|Upperarm_LShape.o" "polyUnite1.ip[1]"
		;
connectAttr "|group2|Forearm_R|transform7|Forearm_RShape.o" "polyUnite1.ip[2]";
connectAttr "|group2|Upperarm_R|transform6|Upperarm_RShape.o" "polyUnite1.ip[3]"
		;
connectAttr "|group2|Thigh_L|transform5|Thigh_LShape.o" "polyUnite1.ip[4]";
connectAttr "|group2|Calf_L|transform4|Calf_LShape.o" "polyUnite1.ip[5]";
connectAttr "|group2|Calf_R|transform3|Calf_RShape.o" "polyUnite1.ip[6]";
connectAttr "|group2|Thigh_R|transform2|Thigh_RShape.o" "polyUnite1.ip[7]";
connectAttr "|group2|BodynHead|transform1|BodynHeadShape.o" "polyUnite1.ip[8]";
connectAttr "|group2|Forearm_L|transform9|Forearm_LShape.wm" "polyUnite1.im[0]";
connectAttr "|group2|Upperarm_L|transform8|Upperarm_LShape.wm" "polyUnite1.im[1]"
		;
connectAttr "|group2|Forearm_R|transform7|Forearm_RShape.wm" "polyUnite1.im[2]";
connectAttr "|group2|Upperarm_R|transform6|Upperarm_RShape.wm" "polyUnite1.im[3]"
		;
connectAttr "|group2|Thigh_L|transform5|Thigh_LShape.wm" "polyUnite1.im[4]";
connectAttr "|group2|Calf_L|transform4|Calf_LShape.wm" "polyUnite1.im[5]";
connectAttr "|group2|Calf_R|transform3|Calf_RShape.wm" "polyUnite1.im[6]";
connectAttr "|group2|Thigh_R|transform2|Thigh_RShape.wm" "polyUnite1.im[7]";
connectAttr "|group2|BodynHead|transform1|BodynHeadShape.wm" "polyUnite1.im[8]";
connectAttr "polyUnite1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyNormalizeUV1.ip";
connectAttr "MaleBuyerMesh_CombinedShape.wm" "polyNormalizeUV1.mp";
connectAttr "polyNormalizeUV1.out" "polyTweakUV2.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "MaleBuyerMesh_CombinedShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "HIKproperties1.msg" "QuickRigCharacter.propertyState";
connectAttr "HIKproperties2.msg" "QuickRigCharacter1.propertyState";
connectAttr "MaleBuyerMesh_CombinedShape.msg" "QuickRigCharacter1.meshes" -na;
connectAttr "QuickRigCharacter1_Guides.msg" "QuickRigCharacter1.guides";
connectAttr "QuickRigCharacter1_Reference.msg" "QuickRigCharacter1.skeleton";
connectAttr "QuickRigCharacter1_Reference.ch" "QuickRigCharacter1.Reference";
connectAttr "QuickRigCharacter1_Hips.ch" "QuickRigCharacter1.Hips";
connectAttr "QuickRigCharacter1_LeftUpLeg.ch" "QuickRigCharacter1.LeftUpLeg";
connectAttr "QuickRigCharacter1_LeftLeg.ch" "QuickRigCharacter1.LeftLeg";
connectAttr "QuickRigCharacter1_LeftFoot.ch" "QuickRigCharacter1.LeftFoot";
connectAttr "QuickRigCharacter1_RightUpLeg.ch" "QuickRigCharacter1.RightUpLeg";
connectAttr "QuickRigCharacter1_RightLeg.ch" "QuickRigCharacter1.RightLeg";
connectAttr "QuickRigCharacter1_RightFoot.ch" "QuickRigCharacter1.RightFoot";
connectAttr "QuickRigCharacter1_Spine.ch" "QuickRigCharacter1.Spine";
connectAttr "QuickRigCharacter1_LeftArm.ch" "QuickRigCharacter1.LeftArm";
connectAttr "QuickRigCharacter1_LeftForeArm.ch" "QuickRigCharacter1.LeftForeArm"
		;
connectAttr "QuickRigCharacter1_LeftHand.ch" "QuickRigCharacter1.LeftHand";
connectAttr "QuickRigCharacter1_RightArm.ch" "QuickRigCharacter1.RightArm";
connectAttr "QuickRigCharacter1_RightForeArm.ch" "QuickRigCharacter1.RightForeArm"
		;
connectAttr "QuickRigCharacter1_RightHand.ch" "QuickRigCharacter1.RightHand";
connectAttr "QuickRigCharacter1_Head.ch" "QuickRigCharacter1.Head";
connectAttr "QuickRigCharacter1_LeftToeBase.ch" "QuickRigCharacter1.LeftToeBase"
		;
connectAttr "QuickRigCharacter1_RightToeBase.ch" "QuickRigCharacter1.RightToeBase"
		;
connectAttr "QuickRigCharacter1_LeftShoulder.ch" "QuickRigCharacter1.LeftShoulder"
		;
connectAttr "QuickRigCharacter1_RightShoulder.ch" "QuickRigCharacter1.RightShoulder"
		;
connectAttr "QuickRigCharacter1_Neck.ch" "QuickRigCharacter1.Neck";
connectAttr "QuickRigCharacter1_Spine1.ch" "QuickRigCharacter1.Spine1";
connectAttr "QuickRigCharacter1_Spine2.ch" "QuickRigCharacter1.Spine2";
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.pull" "HIKproperties2.CtrlResistHipsPosition"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.stiffness" "HIKproperties2.CtrlResistHipsOrientation"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.pull" "HIKproperties2.CtrlPullLeftFoot"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.pull" "HIKproperties2.CtrlPullRightFoot"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.pull" "HIKproperties2.CtrlChestPullLeftHand"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.pull" "HIKproperties2.CtrlChestPullRightHand"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.pull" "HIKproperties2.CtrlPullLeftKnee"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.stiffness" "HIKproperties2.CtrlResistLeftKnee"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.pull" "HIKproperties2.CtrlPullRightKnee"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.stiffness" "HIKproperties2.CtrlResistRightKnee"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.pull" "HIKproperties2.CtrlPullLeftElbow"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.stiffness" "HIKproperties2.CtrlResistLeftElbow"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.pull" "HIKproperties2.CtrlPullRightElbow"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.stiffness" "HIKproperties2.CtrlResistRightElbow"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.stiffness" "HIKproperties2.ParamCtrlSpineStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.pull" "HIKproperties2.CtrlResistChestPosition"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.stiffness" "HIKproperties2.CtrlResistChestOrientation"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.pull" "HIKproperties2.CtrlPullLeftToeBase"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.pull" "HIKproperties2.CtrlPullRightToeBase"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.stiffness" "HIKproperties2.CtrlResistLeftCollar"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.stiffness" "HIKproperties2.CtrlResistRightCollar"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.pull" "HIKproperties2.CtrlPullHead"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.stiffness" "HIKproperties2.ParamCtrlNeckStiffness"
		;
connectAttr "HIKproperties2.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "HIKFK2State1.OutputCharacterState" "HIKSolverNode1.InputCharacterState"
		;
connectAttr "HIKPinning2State1.OutputEffectorState" "HIKSolverNode1.InputEffectorState"
		;
connectAttr "HIKPinning2State1.OutputEffectorStateNoAux" "HIKSolverNode1.InputEffectorStateNoAux"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "QuickRigCharacter1_Hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "QuickRigCharacter1_Hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "QuickRigCharacter1_Hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "QuickRigCharacter1_Hips.is" "HIKState2SK1.HipsIS";
connectAttr "QuickRigCharacter1_Hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "QuickRigCharacter1_Hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "QuickRigCharacter1_LeftUpLeg.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "QuickRigCharacter1_LeftUpLeg.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "QuickRigCharacter1_LeftUpLeg.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "QuickRigCharacter1_LeftUpLeg.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "QuickRigCharacter1_LeftUpLeg.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "QuickRigCharacter1_LeftUpLeg.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "QuickRigCharacter1_LeftLeg.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "QuickRigCharacter1_LeftLeg.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "QuickRigCharacter1_LeftLeg.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "QuickRigCharacter1_LeftLeg.is" "HIKState2SK1.LeftLegIS";
connectAttr "QuickRigCharacter1_LeftLeg.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "QuickRigCharacter1_LeftLeg.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "QuickRigCharacter1_LeftFoot.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "QuickRigCharacter1_LeftFoot.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "QuickRigCharacter1_LeftFoot.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "QuickRigCharacter1_LeftFoot.is" "HIKState2SK1.LeftFootIS";
connectAttr "QuickRigCharacter1_LeftFoot.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "QuickRigCharacter1_LeftFoot.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "QuickRigCharacter1_RightUpLeg.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "QuickRigCharacter1_RightUpLeg.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "QuickRigCharacter1_RightUpLeg.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "QuickRigCharacter1_RightUpLeg.is" "HIKState2SK1.RightUpLegIS";
connectAttr "QuickRigCharacter1_RightUpLeg.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "QuickRigCharacter1_RightUpLeg.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "QuickRigCharacter1_RightLeg.pm" "HIKState2SK1.RightLegPGX";
connectAttr "QuickRigCharacter1_RightLeg.jo" "HIKState2SK1.RightLegPreR";
connectAttr "QuickRigCharacter1_RightLeg.ssc" "HIKState2SK1.RightLegSC";
connectAttr "QuickRigCharacter1_RightLeg.is" "HIKState2SK1.RightLegIS";
connectAttr "QuickRigCharacter1_RightLeg.ro" "HIKState2SK1.RightLegROrder";
connectAttr "QuickRigCharacter1_RightLeg.ra" "HIKState2SK1.RightLegPostR";
connectAttr "QuickRigCharacter1_RightFoot.pm" "HIKState2SK1.RightFootPGX";
connectAttr "QuickRigCharacter1_RightFoot.jo" "HIKState2SK1.RightFootPreR";
connectAttr "QuickRigCharacter1_RightFoot.ssc" "HIKState2SK1.RightFootSC";
connectAttr "QuickRigCharacter1_RightFoot.is" "HIKState2SK1.RightFootIS";
connectAttr "QuickRigCharacter1_RightFoot.ro" "HIKState2SK1.RightFootROrder";
connectAttr "QuickRigCharacter1_RightFoot.ra" "HIKState2SK1.RightFootPostR";
connectAttr "QuickRigCharacter1_Spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "QuickRigCharacter1_Spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "QuickRigCharacter1_Spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "QuickRigCharacter1_Spine.is" "HIKState2SK1.SpineIS";
connectAttr "QuickRigCharacter1_Spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "QuickRigCharacter1_Spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "QuickRigCharacter1_LeftArm.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "QuickRigCharacter1_LeftArm.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "QuickRigCharacter1_LeftArm.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "QuickRigCharacter1_LeftArm.is" "HIKState2SK1.LeftArmIS";
connectAttr "QuickRigCharacter1_LeftArm.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "QuickRigCharacter1_LeftArm.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "QuickRigCharacter1_LeftForeArm.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "QuickRigCharacter1_LeftForeArm.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "QuickRigCharacter1_LeftForeArm.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "QuickRigCharacter1_LeftForeArm.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "QuickRigCharacter1_LeftForeArm.ro" "HIKState2SK1.LeftForeArmROrder"
		;
connectAttr "QuickRigCharacter1_LeftForeArm.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "QuickRigCharacter1_LeftHand.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "QuickRigCharacter1_LeftHand.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "QuickRigCharacter1_LeftHand.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "QuickRigCharacter1_LeftHand.is" "HIKState2SK1.LeftHandIS";
connectAttr "QuickRigCharacter1_LeftHand.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "QuickRigCharacter1_LeftHand.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "QuickRigCharacter1_RightArm.pm" "HIKState2SK1.RightArmPGX";
connectAttr "QuickRigCharacter1_RightArm.jo" "HIKState2SK1.RightArmPreR";
connectAttr "QuickRigCharacter1_RightArm.ssc" "HIKState2SK1.RightArmSC";
connectAttr "QuickRigCharacter1_RightArm.is" "HIKState2SK1.RightArmIS";
connectAttr "QuickRigCharacter1_RightArm.ro" "HIKState2SK1.RightArmROrder";
connectAttr "QuickRigCharacter1_RightArm.ra" "HIKState2SK1.RightArmPostR";
connectAttr "QuickRigCharacter1_RightForeArm.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "QuickRigCharacter1_RightForeArm.jo" "HIKState2SK1.RightForeArmPreR"
		;
connectAttr "QuickRigCharacter1_RightForeArm.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "QuickRigCharacter1_RightForeArm.is" "HIKState2SK1.RightForeArmIS";
connectAttr "QuickRigCharacter1_RightForeArm.ro" "HIKState2SK1.RightForeArmROrder"
		;
connectAttr "QuickRigCharacter1_RightForeArm.ra" "HIKState2SK1.RightForeArmPostR"
		;
connectAttr "QuickRigCharacter1_RightHand.pm" "HIKState2SK1.RightHandPGX";
connectAttr "QuickRigCharacter1_RightHand.jo" "HIKState2SK1.RightHandPreR";
connectAttr "QuickRigCharacter1_RightHand.ssc" "HIKState2SK1.RightHandSC";
connectAttr "QuickRigCharacter1_RightHand.is" "HIKState2SK1.RightHandIS";
connectAttr "QuickRigCharacter1_RightHand.ro" "HIKState2SK1.RightHandROrder";
connectAttr "QuickRigCharacter1_RightHand.ra" "HIKState2SK1.RightHandPostR";
connectAttr "QuickRigCharacter1_Head.pm" "HIKState2SK1.HeadPGX";
connectAttr "QuickRigCharacter1_Head.jo" "HIKState2SK1.HeadPreR";
connectAttr "QuickRigCharacter1_Head.ssc" "HIKState2SK1.HeadSC";
connectAttr "QuickRigCharacter1_Head.is" "HIKState2SK1.HeadIS";
connectAttr "QuickRigCharacter1_Head.ro" "HIKState2SK1.HeadROrder";
connectAttr "QuickRigCharacter1_Head.ra" "HIKState2SK1.HeadPostR";
connectAttr "QuickRigCharacter1_LeftToeBase.pm" "HIKState2SK1.LeftToeBasePGX";
connectAttr "QuickRigCharacter1_LeftToeBase.jo" "HIKState2SK1.LeftToeBasePreR";
connectAttr "QuickRigCharacter1_LeftToeBase.ssc" "HIKState2SK1.LeftToeBaseSC";
connectAttr "QuickRigCharacter1_LeftToeBase.is" "HIKState2SK1.LeftToeBaseIS";
connectAttr "QuickRigCharacter1_LeftToeBase.ro" "HIKState2SK1.LeftToeBaseROrder"
		;
connectAttr "QuickRigCharacter1_LeftToeBase.ra" "HIKState2SK1.LeftToeBasePostR";
connectAttr "QuickRigCharacter1_RightToeBase.pm" "HIKState2SK1.RightToeBasePGX";
connectAttr "QuickRigCharacter1_RightToeBase.jo" "HIKState2SK1.RightToeBasePreR"
		;
connectAttr "QuickRigCharacter1_RightToeBase.ssc" "HIKState2SK1.RightToeBaseSC";
connectAttr "QuickRigCharacter1_RightToeBase.is" "HIKState2SK1.RightToeBaseIS";
connectAttr "QuickRigCharacter1_RightToeBase.ro" "HIKState2SK1.RightToeBaseROrder"
		;
connectAttr "QuickRigCharacter1_RightToeBase.ra" "HIKState2SK1.RightToeBasePostR"
		;
connectAttr "QuickRigCharacter1_LeftShoulder.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "QuickRigCharacter1_LeftShoulder.jo" "HIKState2SK1.LeftShoulderPreR"
		;
connectAttr "QuickRigCharacter1_LeftShoulder.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "QuickRigCharacter1_LeftShoulder.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "QuickRigCharacter1_LeftShoulder.ro" "HIKState2SK1.LeftShoulderROrder"
		;
connectAttr "QuickRigCharacter1_LeftShoulder.ra" "HIKState2SK1.LeftShoulderPostR"
		;
connectAttr "QuickRigCharacter1_RightShoulder.pm" "HIKState2SK1.RightShoulderPGX"
		;
connectAttr "QuickRigCharacter1_RightShoulder.jo" "HIKState2SK1.RightShoulderPreR"
		;
connectAttr "QuickRigCharacter1_RightShoulder.ssc" "HIKState2SK1.RightShoulderSC"
		;
connectAttr "QuickRigCharacter1_RightShoulder.is" "HIKState2SK1.RightShoulderIS"
		;
connectAttr "QuickRigCharacter1_RightShoulder.ro" "HIKState2SK1.RightShoulderROrder"
		;
connectAttr "QuickRigCharacter1_RightShoulder.ra" "HIKState2SK1.RightShoulderPostR"
		;
connectAttr "QuickRigCharacter1_Neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "QuickRigCharacter1_Neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "QuickRigCharacter1_Neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "QuickRigCharacter1_Neck.is" "HIKState2SK1.NeckIS";
connectAttr "QuickRigCharacter1_Neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "QuickRigCharacter1_Neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "QuickRigCharacter1_Spine1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "QuickRigCharacter1_Spine1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "QuickRigCharacter1_Spine1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "QuickRigCharacter1_Spine1.is" "HIKState2SK1.Spine1IS";
connectAttr "QuickRigCharacter1_Spine1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "QuickRigCharacter1_Spine1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "QuickRigCharacter1_Spine2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "QuickRigCharacter1_Spine2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "QuickRigCharacter1_Spine2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "QuickRigCharacter1_Spine2.is" "HIKState2SK1.Spine2IS";
connectAttr "QuickRigCharacter1_Spine2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "QuickRigCharacter1_Spine2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "QuickRigCharacter1_ControlRig.HIC"
		;
connectAttr "QuickRigCharacter1_Ctrl_Reference.ch" "QuickRigCharacter1_ControlRig.Reference"
		;
connectAttr "QuickRigCharacter1_Ctrl_Hips.ch" "QuickRigCharacter1_ControlRig.Hips"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.ch" "QuickRigCharacter1_ControlRig.LeftUpLeg"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.ch" "QuickRigCharacter1_ControlRig.LeftLeg"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.ch" "QuickRigCharacter1_ControlRig.LeftFoot"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.ch" "QuickRigCharacter1_ControlRig.RightUpLeg"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.ch" "QuickRigCharacter1_ControlRig.RightLeg"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.ch" "QuickRigCharacter1_ControlRig.RightFoot"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine.ch" "QuickRigCharacter1_ControlRig.Spine"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.ch" "QuickRigCharacter1_ControlRig.LeftArm"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.ch" "QuickRigCharacter1_ControlRig.LeftForeArm"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.ch" "QuickRigCharacter1_ControlRig.LeftHand"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.ch" "QuickRigCharacter1_ControlRig.RightArm"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.ch" "QuickRigCharacter1_ControlRig.RightForeArm"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.ch" "QuickRigCharacter1_ControlRig.RightHand"
		;
connectAttr "QuickRigCharacter1_Ctrl_Head.ch" "QuickRigCharacter1_ControlRig.Head"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.ch" "QuickRigCharacter1_ControlRig.LeftToeBase"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.ch" "QuickRigCharacter1_ControlRig.RightToeBase"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.ch" "QuickRigCharacter1_ControlRig.LeftShoulder"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.ch" "QuickRigCharacter1_ControlRig.RightShoulder"
		;
connectAttr "QuickRigCharacter1_Ctrl_Neck.ch" "QuickRigCharacter1_ControlRig.Neck"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.ch" "QuickRigCharacter1_ControlRig.Spine1"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.ch" "QuickRigCharacter1_ControlRig.Spine2"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.ch" "QuickRigCharacter1_ControlRig.HipsEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.ch" "QuickRigCharacter1_ControlRig.LeftAnkleEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.ch" "QuickRigCharacter1_ControlRig.RightAnkleEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.ch" "QuickRigCharacter1_ControlRig.LeftWristEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.ch" "QuickRigCharacter1_ControlRig.RightWristEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.ch" "QuickRigCharacter1_ControlRig.LeftKneeEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.ch" "QuickRigCharacter1_ControlRig.RightKneeEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.ch" "QuickRigCharacter1_ControlRig.LeftElbowEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.ch" "QuickRigCharacter1_ControlRig.RightElbowEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.ch" "QuickRigCharacter1_ControlRig.ChestOriginEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.ch" "QuickRigCharacter1_ControlRig.ChestEndEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.ch" "QuickRigCharacter1_ControlRig.LeftFootEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.ch" "QuickRigCharacter1_ControlRig.RightFootEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.ch" "QuickRigCharacter1_ControlRig.LeftShoulderEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.ch" "QuickRigCharacter1_ControlRig.RightShoulderEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.ch" "QuickRigCharacter1_ControlRig.HeadEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.ch" "QuickRigCharacter1_ControlRig.LeftHipEffector[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.ch" "QuickRigCharacter1_ControlRig.RightHipEffector[0]"
		;
connectAttr "HIKproperties2.ra" "QuickRigCharacter1_ControlRig.ra";
connectAttr "QuickRigCharacter1_HipsBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_ChestBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_LeftArmBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_RightArmBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_LeftLegBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_RightLegBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_HeadBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_LeftHandBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_RightHandBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_LeftFootBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_RightFootBPKG.msg" "QuickRigCharacter1_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.msg" "QuickRigCharacter1_FullBodyKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.msg" "QuickRigCharacter1_FullBodyKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.msg" "QuickRigCharacter1_FullBodyKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.msg" "QuickRigCharacter1_FullBodyKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.msg" "QuickRigCharacter1_FullBodyKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.msg" "QuickRigCharacter1_FullBodyKG.act[5]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.msg" "QuickRigCharacter1_FullBodyKG.act[6]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine.msg" "QuickRigCharacter1_FullBodyKG.act[7]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.msg" "QuickRigCharacter1_FullBodyKG.act[8]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.msg" "QuickRigCharacter1_FullBodyKG.act[9]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.msg" "QuickRigCharacter1_FullBodyKG.act[10]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.msg" "QuickRigCharacter1_FullBodyKG.act[11]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.msg" "QuickRigCharacter1_FullBodyKG.act[12]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.msg" "QuickRigCharacter1_FullBodyKG.act[13]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Head.msg" "QuickRigCharacter1_FullBodyKG.act[14]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.msg" "QuickRigCharacter1_FullBodyKG.act[15]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.msg" "QuickRigCharacter1_FullBodyKG.act[16]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.msg" "QuickRigCharacter1_FullBodyKG.act[17]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.msg" "QuickRigCharacter1_FullBodyKG.act[18]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Neck.msg" "QuickRigCharacter1_FullBodyKG.act[19]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.msg" "QuickRigCharacter1_FullBodyKG.act[20]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.msg" "QuickRigCharacter1_FullBodyKG.act[21]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.msg" "QuickRigCharacter1_FullBodyKG.act[22]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.msg" "QuickRigCharacter1_FullBodyKG.act[23]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.msg" "QuickRigCharacter1_FullBodyKG.act[24]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.msg" "QuickRigCharacter1_FullBodyKG.act[25]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.msg" "QuickRigCharacter1_FullBodyKG.act[26]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.msg" "QuickRigCharacter1_FullBodyKG.act[27]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.msg" "QuickRigCharacter1_FullBodyKG.act[28]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.msg" "QuickRigCharacter1_FullBodyKG.act[29]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.msg" "QuickRigCharacter1_FullBodyKG.act[30]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.msg" "QuickRigCharacter1_FullBodyKG.act[31]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.msg" "QuickRigCharacter1_FullBodyKG.act[32]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.msg" "QuickRigCharacter1_FullBodyKG.act[33]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.msg" "QuickRigCharacter1_FullBodyKG.act[34]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.msg" "QuickRigCharacter1_FullBodyKG.act[35]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.msg" "QuickRigCharacter1_FullBodyKG.act[36]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.msg" "QuickRigCharacter1_FullBodyKG.act[37]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.msg" "QuickRigCharacter1_FullBodyKG.act[38]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.msg" "QuickRigCharacter1_FullBodyKG.act[39]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Hips.rz" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.ry" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.rx" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.tz" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.ty" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.tx" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.rz" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.ry" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.rx" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.tz" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.ty" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.tx" "QuickRigCharacter1_HipsBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Hips.msg" "QuickRigCharacter1_HipsBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.msg" "QuickRigCharacter1_HipsBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine.rz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine.ry" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine.rx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.rz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.ry" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.rx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.rz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.ry" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.rx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.rz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.ry" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.rx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.tz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.ty" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.tx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.rz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.ry" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.rx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.tz" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.ty" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.tx" "QuickRigCharacter1_ChestBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Spine.msg" "QuickRigCharacter1_ChestBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine1.msg" "QuickRigCharacter1_ChestBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Spine2.msg" "QuickRigCharacter1_ChestBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.msg" "QuickRigCharacter1_ChestBPKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.msg" "QuickRigCharacter1_ChestBPKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.tz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.ty" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.tx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.tz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.ty" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.tx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.rz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.ry" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.rx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.tz" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.ty" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.tx" "QuickRigCharacter1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.msg" "QuickRigCharacter1_LeftArmBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.msg" "QuickRigCharacter1_LeftArmBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.msg" "QuickRigCharacter1_LeftArmBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.msg" "QuickRigCharacter1_LeftArmBPKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.msg" "QuickRigCharacter1_LeftArmBPKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.msg" "QuickRigCharacter1_LeftArmBPKG.act[5]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.msg" "QuickRigCharacter1_LeftArmBPKG.act[6]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.tz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.ty" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.tx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.tz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.ty" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.tx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.rz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.ry" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.rx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.tz" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.ty" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.tx" "QuickRigCharacter1_RightArmBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightArm.msg" "QuickRigCharacter1_RightArmBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.msg" "QuickRigCharacter1_RightArmBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.msg" "QuickRigCharacter1_RightArmBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.msg" "QuickRigCharacter1_RightArmBPKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.msg" "QuickRigCharacter1_RightArmBPKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.msg" "QuickRigCharacter1_RightArmBPKG.act[5]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.msg" "QuickRigCharacter1_RightArmBPKG.act[6]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.tz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.ty" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.tx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.tz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.ty" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.tx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.tz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.ty" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.tx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.rz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.ry" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.rx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.tz" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.ty" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.tx" "QuickRigCharacter1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.msg" "QuickRigCharacter1_LeftLegBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.msg" "QuickRigCharacter1_LeftLegBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.msg" "QuickRigCharacter1_LeftLegBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.msg" "QuickRigCharacter1_LeftLegBPKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.msg" "QuickRigCharacter1_LeftLegBPKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.msg" "QuickRigCharacter1_LeftLegBPKG.act[5]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.msg" "QuickRigCharacter1_LeftLegBPKG.act[6]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.msg" "QuickRigCharacter1_LeftLegBPKG.act[7]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.tz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.ty" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.tx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.tz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.ty" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.tx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.tz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.ty" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.tx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.rz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.ry" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.rx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.tz" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.ty" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.tx" "QuickRigCharacter1_RightLegBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.msg" "QuickRigCharacter1_RightLegBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.msg" "QuickRigCharacter1_RightLegBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.msg" "QuickRigCharacter1_RightLegBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.msg" "QuickRigCharacter1_RightLegBPKG.act[3]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.msg" "QuickRigCharacter1_RightLegBPKG.act[4]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.msg" "QuickRigCharacter1_RightLegBPKG.act[5]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.msg" "QuickRigCharacter1_RightLegBPKG.act[6]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.msg" "QuickRigCharacter1_RightLegBPKG.act[7]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Head.rz" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Head.ry" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Head.rx" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Neck.rz" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Neck.ry" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Neck.rx" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.rz" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.ry" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.rx" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.tz" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.ty" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.tx" "QuickRigCharacter1_HeadBPKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter1_Ctrl_Head.msg" "QuickRigCharacter1_HeadBPKG.act[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_Neck.msg" "QuickRigCharacter1_HeadBPKG.act[1]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.msg" "QuickRigCharacter1_HeadBPKG.act[2]"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKFK2State1.InputCharacterDefinition"
		;
connectAttr "QuickRigCharacter1_Ctrl_Reference.wm" "HIKFK2State1.ReferenceGX";
connectAttr "QuickRigCharacter1_Ctrl_Hips.wm" "HIKFK2State1.HipsGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftUpLeg.wm" "HIKFK2State1.LeftUpLegGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftLeg.wm" "HIKFK2State1.LeftLegGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftFoot.wm" "HIKFK2State1.LeftFootGX";
connectAttr "QuickRigCharacter1_Ctrl_RightUpLeg.wm" "HIKFK2State1.RightUpLegGX";
connectAttr "QuickRigCharacter1_Ctrl_RightLeg.wm" "HIKFK2State1.RightLegGX";
connectAttr "QuickRigCharacter1_Ctrl_RightFoot.wm" "HIKFK2State1.RightFootGX";
connectAttr "QuickRigCharacter1_Ctrl_Spine.wm" "HIKFK2State1.SpineGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftArm.wm" "HIKFK2State1.LeftArmGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftForeArm.wm" "HIKFK2State1.LeftForeArmGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHand.wm" "HIKFK2State1.LeftHandGX";
connectAttr "QuickRigCharacter1_Ctrl_RightArm.wm" "HIKFK2State1.RightArmGX";
connectAttr "QuickRigCharacter1_Ctrl_RightForeArm.wm" "HIKFK2State1.RightForeArmGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHand.wm" "HIKFK2State1.RightHandGX";
connectAttr "QuickRigCharacter1_Ctrl_Head.wm" "HIKFK2State1.HeadGX";
connectAttr "QuickRigCharacter1_Ctrl_LeftToeBase.wm" "HIKFK2State1.LeftToeBaseGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightToeBase.wm" "HIKFK2State1.RightToeBaseGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulder.wm" "HIKFK2State1.LeftShoulderGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulder.wm" "HIKFK2State1.RightShoulderGX"
		;
connectAttr "QuickRigCharacter1_Ctrl_Neck.wm" "HIKFK2State1.NeckGX";
connectAttr "QuickRigCharacter1_Ctrl_Spine1.wm" "HIKFK2State1.Spine1GX";
connectAttr "QuickRigCharacter1_Ctrl_Spine2.wm" "HIKFK2State1.Spine2GX";
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.wm" "HIKEffector2State1.HipsEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.rt" "HIKEffector2State1.HipsEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.rr" "HIKEffector2State1.HipsEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.po" "HIKEffector2State1.HipsEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.pull" "HIKEffector2State1.HipsEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.stiffness" "HIKEffector2State1.HipsEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.wm" "HIKEffector2State1.LeftAnkleEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.rt" "HIKEffector2State1.LeftAnkleEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.rr" "HIKEffector2State1.LeftAnkleEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.po" "HIKEffector2State1.LeftAnkleEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.pull" "HIKEffector2State1.LeftAnkleEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.stiffness" "HIKEffector2State1.LeftAnkleEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.wm" "HIKEffector2State1.RightAnkleEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.rt" "HIKEffector2State1.RightAnkleEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.rr" "HIKEffector2State1.RightAnkleEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.po" "HIKEffector2State1.RightAnkleEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.pull" "HIKEffector2State1.RightAnkleEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.stiffness" "HIKEffector2State1.RightAnkleEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.wm" "HIKEffector2State1.LeftWristEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.rt" "HIKEffector2State1.LeftWristEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.rr" "HIKEffector2State1.LeftWristEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.po" "HIKEffector2State1.LeftWristEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.pull" "HIKEffector2State1.LeftWristEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.stiffness" "HIKEffector2State1.LeftWristEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.wm" "HIKEffector2State1.RightWristEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.rt" "HIKEffector2State1.RightWristEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.rr" "HIKEffector2State1.RightWristEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.po" "HIKEffector2State1.RightWristEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.pull" "HIKEffector2State1.RightWristEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.stiffness" "HIKEffector2State1.RightWristEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.wm" "HIKEffector2State1.LeftKneeEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.rt" "HIKEffector2State1.LeftKneeEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.rr" "HIKEffector2State1.LeftKneeEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.po" "HIKEffector2State1.LeftKneeEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.pull" "HIKEffector2State1.LeftKneeEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.stiffness" "HIKEffector2State1.LeftKneeEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.wm" "HIKEffector2State1.RightKneeEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.rt" "HIKEffector2State1.RightKneeEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.rr" "HIKEffector2State1.RightKneeEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.po" "HIKEffector2State1.RightKneeEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.pull" "HIKEffector2State1.RightKneeEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.stiffness" "HIKEffector2State1.RightKneeEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.wm" "HIKEffector2State1.LeftElbowEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.rt" "HIKEffector2State1.LeftElbowEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.rr" "HIKEffector2State1.LeftElbowEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.po" "HIKEffector2State1.LeftElbowEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.pull" "HIKEffector2State1.LeftElbowEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.stiffness" "HIKEffector2State1.LeftElbowEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.wm" "HIKEffector2State1.RightElbowEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.rt" "HIKEffector2State1.RightElbowEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.rr" "HIKEffector2State1.RightElbowEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.po" "HIKEffector2State1.RightElbowEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.pull" "HIKEffector2State1.RightElbowEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.stiffness" "HIKEffector2State1.RightElbowEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.wm" "HIKEffector2State1.ChestOriginEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.rt" "HIKEffector2State1.ChestOriginEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.rr" "HIKEffector2State1.ChestOriginEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.po" "HIKEffector2State1.ChestOriginEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.pull" "HIKEffector2State1.ChestOriginEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.stiffness" "HIKEffector2State1.ChestOriginEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.wm" "HIKEffector2State1.ChestEndEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.rt" "HIKEffector2State1.ChestEndEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.rr" "HIKEffector2State1.ChestEndEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.po" "HIKEffector2State1.ChestEndEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.pull" "HIKEffector2State1.ChestEndEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.stiffness" "HIKEffector2State1.ChestEndEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.wm" "HIKEffector2State1.LeftFootEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.rt" "HIKEffector2State1.LeftFootEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.rr" "HIKEffector2State1.LeftFootEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.po" "HIKEffector2State1.LeftFootEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.pull" "HIKEffector2State1.LeftFootEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.stiffness" "HIKEffector2State1.LeftFootEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.wm" "HIKEffector2State1.RightFootEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.rt" "HIKEffector2State1.RightFootEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.rr" "HIKEffector2State1.RightFootEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.po" "HIKEffector2State1.RightFootEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.pull" "HIKEffector2State1.RightFootEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.stiffness" "HIKEffector2State1.RightFootEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.wm" "HIKEffector2State1.LeftShoulderEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.rt" "HIKEffector2State1.LeftShoulderEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.rr" "HIKEffector2State1.LeftShoulderEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.po" "HIKEffector2State1.LeftShoulderEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.pull" "HIKEffector2State1.LeftShoulderEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.stiffness" "HIKEffector2State1.LeftShoulderEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.wm" "HIKEffector2State1.RightShoulderEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.rt" "HIKEffector2State1.RightShoulderEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.rr" "HIKEffector2State1.RightShoulderEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.po" "HIKEffector2State1.RightShoulderEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.pull" "HIKEffector2State1.RightShoulderEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.stiffness" "HIKEffector2State1.RightShoulderEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.wm" "HIKEffector2State1.HeadEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.rt" "HIKEffector2State1.HeadEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.rr" "HIKEffector2State1.HeadEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.po" "HIKEffector2State1.HeadEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.pull" "HIKEffector2State1.HeadEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.stiffness" "HIKEffector2State1.HeadEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.wm" "HIKEffector2State1.LeftHipEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.rt" "HIKEffector2State1.LeftHipEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.rr" "HIKEffector2State1.LeftHipEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.po" "HIKEffector2State1.LeftHipEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.pull" "HIKEffector2State1.LeftHipEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.stiffness" "HIKEffector2State1.LeftHipEffectorStiffness"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.wm" "HIKEffector2State1.RightHipEffectorGX[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.rt" "HIKEffector2State1.RightHipEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.rr" "HIKEffector2State1.RightHipEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.po" "HIKEffector2State1.RightHipEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.pull" "HIKEffector2State1.RightHipEffectorPull"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.stiffness" "HIKEffector2State1.RightHipEffectorStiffness"
		;
connectAttr "HIKEffector2State1.EFF" "HIKPinning2State1.InputEffectorState";
connectAttr "HIKEffector2State1.EFFNA" "HIKPinning2State1.InputEffectorStateNoAux"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.pint" "HIKPinning2State1.HipsEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.pinr" "HIKPinning2State1.HipsEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.pint" "HIKPinning2State1.LeftAnkleEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.pinr" "HIKPinning2State1.LeftAnkleEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.pint" "HIKPinning2State1.RightAnkleEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.pinr" "HIKPinning2State1.RightAnkleEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.pint" "HIKPinning2State1.LeftWristEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.pinr" "HIKPinning2State1.LeftWristEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.pint" "HIKPinning2State1.RightWristEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.pinr" "HIKPinning2State1.RightWristEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.pint" "HIKPinning2State1.LeftKneeEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.pinr" "HIKPinning2State1.LeftKneeEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.pint" "HIKPinning2State1.RightKneeEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.pinr" "HIKPinning2State1.RightKneeEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.pint" "HIKPinning2State1.LeftElbowEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.pinr" "HIKPinning2State1.LeftElbowEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.pint" "HIKPinning2State1.RightElbowEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.pinr" "HIKPinning2State1.RightElbowEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.pint" "HIKPinning2State1.ChestOriginEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.pinr" "HIKPinning2State1.ChestOriginEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.pint" "HIKPinning2State1.ChestEndEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.pinr" "HIKPinning2State1.ChestEndEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.pint" "HIKPinning2State1.LeftFootEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.pinr" "HIKPinning2State1.LeftFootEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.pint" "HIKPinning2State1.RightFootEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.pinr" "HIKPinning2State1.RightFootEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.pint" "HIKPinning2State1.LeftShoulderEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.pinr" "HIKPinning2State1.LeftShoulderEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.pint" "HIKPinning2State1.RightShoulderEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.pinr" "HIKPinning2State1.RightShoulderEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.pint" "HIKPinning2State1.HeadEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.pinr" "HIKPinning2State1.HeadEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.pint" "HIKPinning2State1.LeftHipEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.pinr" "HIKPinning2State1.LeftHipEffectorPinR"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.pint" "HIKPinning2State1.RightHipEffectorPinT"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.pinr" "HIKPinning2State1.RightHipEffectorPinR"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKState2FK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2FK1.InputCharacterState"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKState2FK2.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.decs" "HIKState2FK2.InputCharacterState";
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKEffectorFromCharacter1.InputCharacterState"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKEffectorFromCharacter1.InputCharacterDefinition"
		;
connectAttr "HIKproperties2.OutputPropertySetState" "HIKEffectorFromCharacter1.InputPropertySetState"
		;
connectAttr "HIKSolverNode1.decs" "HIKEffectorFromCharacter2.InputCharacterState"
		;
connectAttr "QuickRigCharacter1.OutputCharacterDefinition" "HIKEffectorFromCharacter2.InputCharacterDefinition"
		;
connectAttr "HIKproperties2.OutputPropertySetState" "HIKEffectorFromCharacter2.InputPropertySetState"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.po" "HIKState2Effector1.HipsEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.po" "HIKState2Effector1.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.po" "HIKState2Effector1.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.po" "HIKState2Effector1.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.po" "HIKState2Effector1.RightWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.po" "HIKState2Effector1.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.po" "HIKState2Effector1.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.po" "HIKState2Effector1.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.po" "HIKState2Effector1.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.po" "HIKState2Effector1.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.po" "HIKState2Effector1.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.po" "HIKState2Effector1.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.po" "HIKState2Effector1.RightFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector1.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.po" "HIKState2Effector1.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.po" "HIKState2Effector1.HeadEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.po" "HIKState2Effector1.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.po" "HIKState2Effector1.RightHipEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter1.OutputEffectorState" "HIKState2Effector1.InputEffectorState"
		;
connectAttr "QuickRigCharacter1_Ctrl_HipsEffector.po" "HIKState2Effector2.HipsEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftAnkleEffector.po" "HIKState2Effector2.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightAnkleEffector.po" "HIKState2Effector2.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftWristEffector.po" "HIKState2Effector2.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightWristEffector.po" "HIKState2Effector2.RightWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftKneeEffector.po" "HIKState2Effector2.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightKneeEffector.po" "HIKState2Effector2.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftElbowEffector.po" "HIKState2Effector2.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightElbowEffector.po" "HIKState2Effector2.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestOriginEffector.po" "HIKState2Effector2.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_ChestEndEffector.po" "HIKState2Effector2.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftFootEffector.po" "HIKState2Effector2.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightFootEffector.po" "HIKState2Effector2.RightFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector2.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightShoulderEffector.po" "HIKState2Effector2.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_HeadEffector.po" "HIKState2Effector2.HeadEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_LeftHipEffector.po" "HIKState2Effector2.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter1_Ctrl_RightHipEffector.po" "HIKState2Effector2.RightHipEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter2.OutputEffectorState" "HIKState2Effector2.InputEffectorState"
		;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "QuickRigCharacter1_Hips.wm" "skinCluster1.ma[0]";
connectAttr "QuickRigCharacter1_LeftUpLeg.wm" "skinCluster1.ma[1]";
connectAttr "QuickRigCharacter1_LeftLeg.wm" "skinCluster1.ma[2]";
connectAttr "QuickRigCharacter1_LeftFoot.wm" "skinCluster1.ma[3]";
connectAttr "QuickRigCharacter1_LeftToeBase.wm" "skinCluster1.ma[4]";
connectAttr "QuickRigCharacter1_RightUpLeg.wm" "skinCluster1.ma[5]";
connectAttr "QuickRigCharacter1_RightLeg.wm" "skinCluster1.ma[6]";
connectAttr "QuickRigCharacter1_RightFoot.wm" "skinCluster1.ma[7]";
connectAttr "QuickRigCharacter1_RightToeBase.wm" "skinCluster1.ma[8]";
connectAttr "QuickRigCharacter1_Spine.wm" "skinCluster1.ma[9]";
connectAttr "QuickRigCharacter1_Spine2.wm" "skinCluster1.ma[11]";
connectAttr "QuickRigCharacter1_LeftShoulder.wm" "skinCluster1.ma[12]";
connectAttr "QuickRigCharacter1_LeftArm.wm" "skinCluster1.ma[13]";
connectAttr "QuickRigCharacter1_LeftForeArm.wm" "skinCluster1.ma[14]";
connectAttr "QuickRigCharacter1_LeftHand.wm" "skinCluster1.ma[15]";
connectAttr "QuickRigCharacter1_RightShoulder.wm" "skinCluster1.ma[16]";
connectAttr "QuickRigCharacter1_RightArm.wm" "skinCluster1.ma[17]";
connectAttr "QuickRigCharacter1_RightForeArm.wm" "skinCluster1.ma[18]";
connectAttr "QuickRigCharacter1_RightHand.wm" "skinCluster1.ma[19]";
connectAttr "QuickRigCharacter1_Neck.wm" "skinCluster1.ma[20]";
connectAttr "QuickRigCharacter1_Head.wm" "skinCluster1.ma[21]";
connectAttr "QuickRigCharacter1_Hips.liw" "skinCluster1.lw[0]";
connectAttr "QuickRigCharacter1_LeftUpLeg.liw" "skinCluster1.lw[1]";
connectAttr "QuickRigCharacter1_LeftLeg.liw" "skinCluster1.lw[2]";
connectAttr "QuickRigCharacter1_LeftFoot.liw" "skinCluster1.lw[3]";
connectAttr "QuickRigCharacter1_LeftToeBase.liw" "skinCluster1.lw[4]";
connectAttr "QuickRigCharacter1_RightUpLeg.liw" "skinCluster1.lw[5]";
connectAttr "QuickRigCharacter1_RightLeg.liw" "skinCluster1.lw[6]";
connectAttr "QuickRigCharacter1_RightFoot.liw" "skinCluster1.lw[7]";
connectAttr "QuickRigCharacter1_RightToeBase.liw" "skinCluster1.lw[8]";
connectAttr "QuickRigCharacter1_Spine.liw" "skinCluster1.lw[9]";
connectAttr "QuickRigCharacter1_Spine2.liw" "skinCluster1.lw[11]";
connectAttr "QuickRigCharacter1_LeftShoulder.liw" "skinCluster1.lw[12]";
connectAttr "QuickRigCharacter1_LeftArm.liw" "skinCluster1.lw[13]";
connectAttr "QuickRigCharacter1_LeftForeArm.liw" "skinCluster1.lw[14]";
connectAttr "QuickRigCharacter1_LeftHand.liw" "skinCluster1.lw[15]";
connectAttr "QuickRigCharacter1_RightShoulder.liw" "skinCluster1.lw[16]";
connectAttr "QuickRigCharacter1_RightArm.liw" "skinCluster1.lw[17]";
connectAttr "QuickRigCharacter1_RightForeArm.liw" "skinCluster1.lw[18]";
connectAttr "QuickRigCharacter1_RightHand.liw" "skinCluster1.lw[19]";
connectAttr "QuickRigCharacter1_Neck.liw" "skinCluster1.lw[20]";
connectAttr "QuickRigCharacter1_Head.liw" "skinCluster1.lw[21]";
connectAttr "QuickRigCharacter1_Hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "QuickRigCharacter1_LeftUpLeg.obcc" "skinCluster1.ifcl[1]";
connectAttr "QuickRigCharacter1_LeftLeg.obcc" "skinCluster1.ifcl[2]";
connectAttr "QuickRigCharacter1_LeftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "QuickRigCharacter1_LeftToeBase.obcc" "skinCluster1.ifcl[4]";
connectAttr "QuickRigCharacter1_RightUpLeg.obcc" "skinCluster1.ifcl[5]";
connectAttr "QuickRigCharacter1_RightLeg.obcc" "skinCluster1.ifcl[6]";
connectAttr "QuickRigCharacter1_RightFoot.obcc" "skinCluster1.ifcl[7]";
connectAttr "QuickRigCharacter1_RightToeBase.obcc" "skinCluster1.ifcl[8]";
connectAttr "QuickRigCharacter1_Spine.obcc" "skinCluster1.ifcl[9]";
connectAttr "QuickRigCharacter1_Spine2.obcc" "skinCluster1.ifcl[11]";
connectAttr "QuickRigCharacter1_LeftShoulder.obcc" "skinCluster1.ifcl[12]";
connectAttr "QuickRigCharacter1_LeftArm.obcc" "skinCluster1.ifcl[13]";
connectAttr "QuickRigCharacter1_LeftForeArm.obcc" "skinCluster1.ifcl[14]";
connectAttr "QuickRigCharacter1_LeftHand.obcc" "skinCluster1.ifcl[15]";
connectAttr "QuickRigCharacter1_RightShoulder.obcc" "skinCluster1.ifcl[16]";
connectAttr "QuickRigCharacter1_RightArm.obcc" "skinCluster1.ifcl[17]";
connectAttr "QuickRigCharacter1_RightForeArm.obcc" "skinCluster1.ifcl[18]";
connectAttr "QuickRigCharacter1_RightHand.obcc" "skinCluster1.ifcl[19]";
connectAttr "QuickRigCharacter1_Neck.obcc" "skinCluster1.ifcl[20]";
connectAttr "QuickRigCharacter1_Head.obcc" "skinCluster1.ifcl[21]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId20.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "MaleBuyerMesh_CombinedShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet1.gn" -na;
connectAttr "MaleBuyerMesh_CombinedShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "MaleBuyerMesh_CombinedShapeOrig.w" "groupParts2.ig";
connectAttr "groupId20.id" "groupParts2.gi";
connectAttr "QuickRigCharacter1_Reference.msg" "bindPose1.m[0]";
connectAttr "QuickRigCharacter1_Hips.msg" "bindPose1.m[1]";
connectAttr "QuickRigCharacter1_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "QuickRigCharacter1_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "QuickRigCharacter1_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "QuickRigCharacter1_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "QuickRigCharacter1_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "QuickRigCharacter1_RightLeg.msg" "bindPose1.m[7]";
connectAttr "QuickRigCharacter1_RightFoot.msg" "bindPose1.m[8]";
connectAttr "QuickRigCharacter1_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "QuickRigCharacter1_Spine.msg" "bindPose1.m[10]";
connectAttr "QuickRigCharacter1_Spine1.msg" "bindPose1.m[11]";
connectAttr "QuickRigCharacter1_Spine2.msg" "bindPose1.m[12]";
connectAttr "QuickRigCharacter1_LeftShoulder.msg" "bindPose1.m[13]";
connectAttr "QuickRigCharacter1_LeftArm.msg" "bindPose1.m[14]";
connectAttr "QuickRigCharacter1_LeftForeArm.msg" "bindPose1.m[15]";
connectAttr "QuickRigCharacter1_LeftHand.msg" "bindPose1.m[16]";
connectAttr "QuickRigCharacter1_RightShoulder.msg" "bindPose1.m[17]";
connectAttr "QuickRigCharacter1_RightArm.msg" "bindPose1.m[18]";
connectAttr "QuickRigCharacter1_RightForeArm.msg" "bindPose1.m[19]";
connectAttr "QuickRigCharacter1_RightHand.msg" "bindPose1.m[20]";
connectAttr "QuickRigCharacter1_Neck.msg" "bindPose1.m[21]";
connectAttr "QuickRigCharacter1_Head.msg" "bindPose1.m[22]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[12]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[12]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "QuickRigCharacter1_Hips.bps" "bindPose1.wm[1]";
connectAttr "QuickRigCharacter1_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "QuickRigCharacter1_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "QuickRigCharacter1_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "QuickRigCharacter1_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "QuickRigCharacter1_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "QuickRigCharacter1_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "QuickRigCharacter1_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "QuickRigCharacter1_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "QuickRigCharacter1_Spine.bps" "bindPose1.wm[10]";
connectAttr "QuickRigCharacter1_Spine1.bps" "bindPose1.wm[11]";
connectAttr "QuickRigCharacter1_Spine2.bps" "bindPose1.wm[12]";
connectAttr "QuickRigCharacter1_LeftShoulder.bps" "bindPose1.wm[13]";
connectAttr "QuickRigCharacter1_LeftArm.bps" "bindPose1.wm[14]";
connectAttr "QuickRigCharacter1_LeftForeArm.bps" "bindPose1.wm[15]";
connectAttr "QuickRigCharacter1_LeftHand.bps" "bindPose1.wm[16]";
connectAttr "QuickRigCharacter1_RightShoulder.bps" "bindPose1.wm[17]";
connectAttr "QuickRigCharacter1_RightArm.bps" "bindPose1.wm[18]";
connectAttr "QuickRigCharacter1_RightForeArm.bps" "bindPose1.wm[19]";
connectAttr "QuickRigCharacter1_RightHand.bps" "bindPose1.wm[20]";
connectAttr "QuickRigCharacter1_Neck.bps" "bindPose1.wm[21]";
connectAttr "QuickRigCharacter1_Head.bps" "bindPose1.wm[22]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "This_is_a_Box_for_scaleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|MaleBuyerMesh_Seperated|Forearm_L|Forearm_LShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Upperarm_L|Upperarm_LShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Forearm_R|Forearm_RShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Upperarm_R|Upperarm_RShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Thigh_L|Thigh_LShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Calf_L|Calf_LShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Calf_R|Calf_RShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|Thigh_R|Thigh_RShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MaleBuyerMesh_Seperated|BodynHead|BodynHeadShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Forearm_L|transform9|Forearm_LShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Forearm_L|transform9|Forearm_LShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Upperarm_L|transform8|Upperarm_LShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Upperarm_L|transform8|Upperarm_LShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Forearm_R|transform7|Forearm_RShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Forearm_R|transform7|Forearm_RShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Upperarm_R|transform6|Upperarm_RShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Upperarm_R|transform6|Upperarm_RShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Thigh_L|transform5|Thigh_LShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Thigh_L|transform5|Thigh_LShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Calf_L|transform4|Calf_LShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Calf_L|transform4|Calf_LShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Calf_R|transform3|Calf_RShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Calf_R|transform3|Calf_RShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Thigh_R|transform2|Thigh_RShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|Thigh_R|transform2|Thigh_RShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|BodynHead|transform1|BodynHeadShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|BodynHead|transform1|BodynHeadShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
// End of Malebuyer_PH.ma
