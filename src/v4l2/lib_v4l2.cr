@[Link("v4l2")]
lib LibV4l2
  SEL_TGT_CROP                                          =              0
  SEL_TGT_CROP_DEFAULT                                  =              1
  SEL_TGT_CROP_BOUNDS                                   =              2
  SEL_TGT_NATIVE_SIZE                                   =              3
  SEL_TGT_COMPOSE                                       =            256
  SEL_TGT_COMPOSE_DEFAULT                               =            257
  SEL_TGT_COMPOSE_BOUNDS                                =            258
  SEL_TGT_COMPOSE_PADDED                                =            259
  CTRL_CLASS_USER                                       =        9961472
  CTRL_CLASS_CODEC                                      =       10027008
  CTRL_CLASS_CAMERA                                     =       10092544
  CTRL_CLASS_FM_TX                                      =       10158080
  CTRL_CLASS_FLASH                                      =       10223616
  CTRL_CLASS_JPEG                                       =       10289152
  CTRL_CLASS_IMAGE_SOURCE                               =       10354688
  CTRL_CLASS_IMAGE_PROC                                 =       10420224
  CTRL_CLASS_DV                                         =       10485760
  CTRL_CLASS_FM_RX                                      =       10551296
  CTRL_CLASS_RF_TUNER                                   =       10616832
  CTRL_CLASS_DETECT                                     =       10682368
  CTRL_CLASS_CODEC_STATELESS                            =       10747904
  CTRL_CLASS_COLORIMETRY                                =       10813440
  CAMERA_ORIENTATION_FRONT                              =              0
  CAMERA_ORIENTATION_BACK                               =              1
  CAMERA_ORIENTATION_EXTERNAL                           =              2
  H264_SPS_CONSTRAINT_SET0_FLAG                         =              1
  H264_SPS_CONSTRAINT_SET1_FLAG                         =              2
  H264_SPS_CONSTRAINT_SET2_FLAG                         =              4
  H264_SPS_CONSTRAINT_SET3_FLAG                         =              8
  H264_SPS_CONSTRAINT_SET4_FLAG                         =             16
  H264_SPS_CONSTRAINT_SET5_FLAG                         =             32
  H264_SPS_FLAG_SEPARATE_COLOUR_PLANE                   =              1
  H264_SPS_FLAG_QPPRIME_Y_ZERO_TRANSFORM_BYPASS         =              2
  H264_SPS_FLAG_DELTA_PIC_ORDER_ALWAYS_ZERO             =              4
  H264_SPS_FLAG_GAPS_IN_FRAME_NUM_VALUE_ALLOWED         =              8
  H264_SPS_FLAG_FRAME_MBS_ONLY                          =             16
  H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD                 =             32
  H264_SPS_FLAG_DIRECT_8X8_INFERENCE                    =             64
  H264_PPS_FLAG_ENTROPY_CODING_MODE                     =              1
  H264_PPS_FLAG_BOTTOM_FIELD_PIC_ORDER_IN_FRAME_PRESENT =              2
  H264_PPS_FLAG_WEIGHTED_PRED                           =              4
  H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT       =              8
  H264_PPS_FLAG_CONSTRAINED_INTRA_PRED                  =             16
  H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT               =             32
  H264_PPS_FLAG_TRANSFORM_8X8_MODE                      =             64
  H264_PPS_FLAG_SCALING_MATRIX_PRESENT                  =            128
  H264_SLICE_TYPE_P                                     =              0
  H264_SLICE_TYPE_B                                     =              1
  H264_SLICE_TYPE_I                                     =              2
  H264_SLICE_TYPE_SP                                    =              3
  H264_SLICE_TYPE_SI                                    =              4
  H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED                =              1
  H264_SLICE_FLAG_SP_FOR_SWITCH                         =              2
  H264_TOP_FIELD_REF                                    =              1
  H264_BOTTOM_FIELD_REF                                 =              2
  H264_FRAME_REF                                        =              3
  H264_NUM_DPB_ENTRIES                                  =             16
  H264_DPB_ENTRY_FLAG_VALID                             =              1
  H264_DPB_ENTRY_FLAG_ACTIVE                            =              2
  H264_DPB_ENTRY_FLAG_LONG_TERM                         =              4
  H264_DPB_ENTRY_FLAG_FIELD                             =              8
  H264_DECODE_PARAM_FLAG_IDR_PIC                        =              1
  H264_DECODE_PARAM_FLAG_FIELD_PIC                      =              2
  H264_DECODE_PARAM_FLAG_BOTTOM_FIELD                   =              4
  H264_DECODE_PARAM_FLAG_PFRAME                         =              8
  H264_DECODE_PARAM_FLAG_BFRAME                         =             16
  FWHT_VERSION                                          =              3
  FWHT_FL_COMPONENTS_NUM_OFFSET                         =             16
  FWHT_FL_PIXENC_OFFSET                                 =             19
  VP8_SEGMENT_FLAG_ENABLED                              =              1
  VP8_SEGMENT_FLAG_UPDATE_MAP                           =              2
  VP8_SEGMENT_FLAG_UPDATE_FEATURE_DATA                  =              4
  VP8_SEGMENT_FLAG_DELTA_VALUE_MODE                     =              8
  VP8_LF_ADJ_ENABLE                                     =              1
  VP8_LF_DELTA_UPDATE                                   =              2
  VP8_LF_FILTER_TYPE_SIMPLE                             =              4
  VP8_COEFF_PROB_CNT                                    =             11
  VP8_MV_PROB_CNT                                       =             19
  VP8_FRAME_FLAG_KEY_FRAME                              =              1
  VP8_FRAME_FLAG_EXPERIMENTAL                           =              2
  VP8_FRAME_FLAG_SHOW_FRAME                             =              4
  VP8_FRAME_FLAG_MB_NO_SKIP_COEFF                       =              8
  VP8_FRAME_FLAG_SIGN_BIAS_GOLDEN                       =             16
  VP8_FRAME_FLAG_SIGN_BIAS_ALT                          =             32
  MPEG2_SEQ_FLAG_PROGRESSIVE                            =              1
  MPEG2_PIC_CODING_TYPE_I                               =              1
  MPEG2_PIC_CODING_TYPE_P                               =              2
  MPEG2_PIC_CODING_TYPE_B                               =              3
  MPEG2_PIC_CODING_TYPE_D                               =              4
  MPEG2_PIC_TOP_FIELD                                   =              1
  MPEG2_PIC_BOTTOM_FIELD                                =              2
  MPEG2_PIC_FRAME                                       =              3
  MPEG2_PIC_FLAG_TOP_FIELD_FIRST                        =              1
  MPEG2_PIC_FLAG_FRAME_PRED_DCT                         =              2
  MPEG2_PIC_FLAG_CONCEALMENT_MV                         =              4
  MPEG2_PIC_FLAG_Q_SCALE_TYPE                           =              8
  MPEG2_PIC_FLAG_INTRA_VLC                              =             16
  MPEG2_PIC_FLAG_ALT_SCAN                               =             32
  MPEG2_PIC_FLAG_REPEAT_FIRST                           =             64
  MPEG2_PIC_FLAG_PROGRESSIVE                            =            128
  HEVC_SLICE_TYPE_B                                     =              0
  HEVC_SLICE_TYPE_P                                     =              1
  HEVC_SLICE_TYPE_I                                     =              2
  HEVC_DPB_ENTRY_LONG_TERM_REFERENCE                    =              1
  HEVC_SEI_PIC_STRUCT_FRAME                             =              0
  HEVC_SEI_PIC_STRUCT_TOP_FIELD                         =              1
  HEVC_SEI_PIC_STRUCT_BOTTOM_FIELD                      =              2
  HEVC_SEI_PIC_STRUCT_TOP_BOTTOM                        =              3
  HEVC_SEI_PIC_STRUCT_BOTTOM_TOP                        =              4
  HEVC_SEI_PIC_STRUCT_TOP_BOTTOM_TOP                    =              5
  HEVC_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM                 =              6
  HEVC_SEI_PIC_STRUCT_FRAME_DOUBLING                    =              7
  HEVC_SEI_PIC_STRUCT_FRAME_TRIPLING                    =              8
  HEVC_SEI_PIC_STRUCT_TOP_PAIRED_PREVIOUS_BOTTOM        =              9
  HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_PREVIOUS_TOP        =             10
  HEVC_SEI_PIC_STRUCT_TOP_PAIRED_NEXT_BOTTOM            =             11
  HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_NEXT_TOP            =             12
  HEVC_DPB_ENTRIES_NUM_MAX                              =             16
  HEVC_DECODE_PARAM_FLAG_IRAP_PIC                       =              1
  HEVC_DECODE_PARAM_FLAG_IDR_PIC                        =              2
  HEVC_DECODE_PARAM_FLAG_NO_OUTPUT_OF_PRIOR             =              4
  HDR10_MASTERING_PRIMARIES_X_LOW                       =              5
  HDR10_MASTERING_PRIMARIES_X_HIGH                      =          37000
  HDR10_MASTERING_PRIMARIES_Y_LOW                       =              5
  HDR10_MASTERING_PRIMARIES_Y_HIGH                      =          42000
  HDR10_MASTERING_WHITE_POINT_X_LOW                     =              5
  HDR10_MASTERING_WHITE_POINT_X_HIGH                    =          37000
  HDR10_MASTERING_WHITE_POINT_Y_LOW                     =              5
  HDR10_MASTERING_WHITE_POINT_Y_HIGH                    =          42000
  HDR10_MASTERING_MAX_LUMA_LOW                          =          50000
  HDR10_MASTERING_MAX_LUMA_HIGH                         =      100000000
  HDR10_MASTERING_MIN_LUMA_LOW                          =              1
  HDR10_MASTERING_MIN_LUMA_HIGH                         =          50000
  VP9_LOOP_FILTER_FLAG_DELTA_ENABLED                    =              1
  VP9_LOOP_FILTER_FLAG_DELTA_UPDATE                     =              2
  VP9_SEGMENTATION_FLAG_ENABLED                         =              1
  VP9_SEGMENTATION_FLAG_UPDATE_MAP                      =              2
  VP9_SEGMENTATION_FLAG_TEMPORAL_UPDATE                 =              4
  VP9_SEGMENTATION_FLAG_UPDATE_DATA                     =              8
  VP9_SEGMENTATION_FLAG_ABS_OR_DELTA_UPDATE             =             16
  VP9_SEG_LVL_ALT_Q                                     =              0
  VP9_SEG_LVL_ALT_L                                     =              1
  VP9_SEG_LVL_REF_FRAME                                 =              2
  VP9_SEG_LVL_SKIP                                      =              3
  VP9_SEG_LVL_MAX                                       =              4
  VP9_SEGMENT_FEATURE_ENABLED_MASK                      =             15
  VP9_FRAME_FLAG_KEY_FRAME                              =              1
  VP9_FRAME_FLAG_SHOW_FRAME                             =              2
  VP9_FRAME_FLAG_ERROR_RESILIENT                        =              4
  VP9_FRAME_FLAG_INTRA_ONLY                             =              8
  VP9_FRAME_FLAG_ALLOW_HIGH_PREC_MV                     =             16
  VP9_FRAME_FLAG_REFRESH_FRAME_CTX                      =             32
  VP9_FRAME_FLAG_PARALLEL_DEC_MODE                      =             64
  VP9_FRAME_FLAG_X_SUBSAMPLING                          =            128
  VP9_FRAME_FLAG_Y_SUBSAMPLING                          =            256
  VP9_FRAME_FLAG_COLOR_RANGE_FULL_SWING                 =            512
  VP9_SIGN_BIAS_LAST                                    =              1
  VP9_SIGN_BIAS_GOLDEN                                  =              2
  VP9_SIGN_BIAS_ALT                                     =              4
  VP9_RESET_FRAME_CTX_NONE                              =              0
  VP9_RESET_FRAME_CTX_SPEC                              =              1
  VP9_RESET_FRAME_CTX_ALL                               =              2
  VP9_INTERP_FILTER_EIGHTTAP                            =              0
  VP9_INTERP_FILTER_EIGHTTAP_SMOOTH                     =              1
  VP9_INTERP_FILTER_EIGHTTAP_SHARP                      =              2
  VP9_INTERP_FILTER_BILINEAR                            =              3
  VP9_INTERP_FILTER_SWITCHABLE                          =              4
  VP9_REFERENCE_MODE_SINGLE_REFERENCE                   =              0
  VP9_REFERENCE_MODE_COMPOUND_REFERENCE                 =              1
  VP9_REFERENCE_MODE_SELECT                             =              2
  VP9_PROFILE_MAX                                       =              3
  VP9_NUM_FRAME_CTX                                     =              4
  VP9_TX_MODE_ONLY_4X4                                  =              0
  VP9_TX_MODE_ALLOW_8X8                                 =              1
  VP9_TX_MODE_ALLOW_16X16                               =              2
  VP9_TX_MODE_ALLOW_32X32                               =              3
  VP9_TX_MODE_SELECT                                    =              4
  CAP_VIDEO_CAPTURE                                     =              1
  CAP_VIDEO_OUTPUT                                      =              2
  CAP_VIDEO_OVERLAY                                     =              4
  CAP_VBI_CAPTURE                                       =             16
  CAP_VBI_OUTPUT                                        =             32
  CAP_SLICED_VBI_CAPTURE                                =             64
  CAP_SLICED_VBI_OUTPUT                                 =            128
  CAP_RDS_CAPTURE                                       =            256
  CAP_VIDEO_OUTPUT_OVERLAY                              =            512
  CAP_HW_FREQ_SEEK                                      =           1024
  CAP_RDS_OUTPUT                                        =           2048
  CAP_VIDEO_CAPTURE_MPLANE                              =           4096
  CAP_VIDEO_OUTPUT_MPLANE                               =           8192
  CAP_VIDEO_M2M_MPLANE                                  =          16384
  CAP_VIDEO_M2M                                         =          32768
  CAP_TUNER                                             =          65536
  CAP_AUDIO                                             =         131072
  CAP_RADIO                                             =         262144
  CAP_MODULATOR                                         =         524288
  CAP_SDR_CAPTURE                                       =        1048576
  CAP_EXT_PIX_FORMAT                                    =        2097152
  CAP_SDR_OUTPUT                                        =        4194304
  CAP_META_CAPTURE                                      =        8388608
  CAP_READWRITE                                         =       16777216
  CAP_STREAMING                                         =       67108864
  CAP_META_OUTPUT                                       =      134217728
  CAP_TOUCH                                             =      268435456
  CAP_IO_MC                                             =      536870912
  CAP_DEVICE_CAPS                                       = 2147483648_i64
  PIX_FMT_PRIV_MAGIC                                    = 4276996862_i64
  PIX_FMT_FLAG_PREMUL_ALPHA                             =              1
  PIX_FMT_FLAG_SET_CSC                                  =              2
  FMT_FLAG_COMPRESSED                                   =              1
  FMT_FLAG_EMULATED                                     =              2
  FMT_FLAG_CONTINUOUS_BYTESTREAM                        =              4
  FMT_FLAG_DYN_RESOLUTION                               =              8
  FMT_FLAG_ENC_CAP_FRAME_INTERVAL                       =             16
  FMT_FLAG_CSC_COLORSPACE                               =             32
  FMT_FLAG_CSC_XFER_FUNC                                =             64
  FMT_FLAG_CSC_YCBCR_ENC                                =            128
  FMT_FLAG_CSC_QUANTIZATION                             =            256
  TC_TYPE_24FPS                                         =              1
  TC_TYPE_25FPS                                         =              2
  TC_TYPE_30FPS                                         =              3
  TC_TYPE_50FPS                                         =              4
  TC_TYPE_60FPS                                         =              5
  TC_FLAG_DROPFRAME                                     =              1
  TC_FLAG_COLORFRAME                                    =              2
  TC_USERBITS_FIELD                                     =             12
  TC_USERBITS_USERDEFINED                               =              0
  TC_USERBITS_8BITCHARS                                 =              8
  BUF_FLAG_MAPPED                                       =              1
  BUF_FLAG_QUEUED                                       =              2
  BUF_FLAG_DONE                                         =              4
  BUF_FLAG_KEYFRAME                                     =              8
  BUF_FLAG_PFRAME                                       =             16
  BUF_FLAG_BFRAME                                       =             32
  BUF_FLAG_ERROR                                        =             64
  BUF_FLAG_IN_REQUEST                                   =            128
  BUF_FLAG_TIMECODE                                     =            256
  BUF_FLAG_M2M_HOLD_CAPTURE_BUF                         =            512
  BUF_FLAG_PREPARED                                     =           1024
  BUF_FLAG_NO_CACHE_INVALIDATE                          =           2048
  BUF_FLAG_NO_CACHE_CLEAN                               =           4096
  BUF_FLAG_TIMESTAMP_MASK                               =          57344
  BUF_FLAG_TIMESTAMP_UNKNOWN                            =              0
  BUF_FLAG_TIMESTAMP_MONOTONIC                          =           8192
  BUF_FLAG_TIMESTAMP_COPY                               =          16384
  BUF_FLAG_TSTAMP_SRC_MASK                              =         458752
  BUF_FLAG_TSTAMP_SRC_EOF                               =              0
  BUF_FLAG_TSTAMP_SRC_SOE                               =          65536
  BUF_FLAG_LAST                                         =        1048576
  BUF_FLAG_REQUEST_FD                                   =        8388608
  FBUF_CAP_EXTERNOVERLAY                                =              1
  FBUF_CAP_CHROMAKEY                                    =              2
  FBUF_CAP_LIST_CLIPPING                                =              4
  FBUF_CAP_BITMAP_CLIPPING                              =              8
  FBUF_CAP_LOCAL_ALPHA                                  =             16
  FBUF_CAP_GLOBAL_ALPHA                                 =             32
  FBUF_CAP_LOCAL_INV_ALPHA                              =             64
  FBUF_CAP_SRC_CHROMAKEY                                =            128
  FBUF_FLAG_PRIMARY                                     =              1
  FBUF_FLAG_OVERLAY                                     =              2
  FBUF_FLAG_CHROMAKEY                                   =              4
  FBUF_FLAG_LOCAL_ALPHA                                 =              8
  FBUF_FLAG_GLOBAL_ALPHA                                =             16
  FBUF_FLAG_LOCAL_INV_ALPHA                             =             32
  FBUF_FLAG_SRC_CHROMAKEY                               =             64
  MODE_HIGHQUALITY                                      =              1
  CAP_TIMEPERFRAME                                      =           4096
  STD_UNKNOWN                                           =              0
  DV_PROGRESSIVE                                        =              0
  DV_INTERLACED                                         =              1
  DV_VSYNC_POS_POL                                      =              1
  DV_HSYNC_POS_POL                                      =              2
  DV_BT_656_1120                                        =              0
  INPUT_TYPE_TUNER                                      =              1
  INPUT_TYPE_CAMERA                                     =              2
  INPUT_TYPE_TOUCH                                      =              3
  IN_ST_NO_POWER                                        =              1
  IN_ST_NO_SIGNAL                                       =              2
  IN_ST_NO_COLOR                                        =              4
  IN_ST_HFLIP                                           =             16
  IN_ST_VFLIP                                           =             32
  IN_ST_NO_H_LOCK                                       =            256
  IN_ST_COLOR_KILL                                      =            512
  IN_ST_NO_V_LOCK                                       =           1024
  IN_ST_NO_STD_LOCK                                     =           2048
  IN_ST_NO_SYNC                                         =          65536
  IN_ST_NO_EQU                                          =         131072
  IN_ST_NO_CARRIER                                      =         262144
  IN_ST_MACROVISION                                     =       16777216
  IN_ST_NO_ACCESS                                       =       33554432
  IN_ST_VTR                                             =       67108864
  IN_CAP_DV_TIMINGS                                     =              2
  IN_CAP_STD                                            =              4
  IN_CAP_NATIVE_SIZE                                    =              8
  OUTPUT_TYPE_MODULATOR                                 =              1
  OUTPUT_TYPE_ANALOG                                    =              2
  OUTPUT_TYPE_ANALOGVGAOVERLAY                          =              3
  OUT_CAP_DV_TIMINGS                                    =              2
  OUT_CAP_STD                                           =              4
  OUT_CAP_NATIVE_SIZE                                   =              8
  CTRL_WHICH_CUR_VAL                                    =              0
  CTRL_WHICH_DEF_VAL                                    =      251658240
  CTRL_WHICH_REQUEST_VAL                                =      251723776
  CTRL_FLAG_DISABLED                                    =              1
  CTRL_FLAG_GRABBED                                     =              2
  CTRL_FLAG_READ_ONLY                                   =              4
  CTRL_FLAG_UPDATE                                      =              8
  CTRL_FLAG_INACTIVE                                    =             16
  CTRL_FLAG_SLIDER                                      =             32
  CTRL_FLAG_WRITE_ONLY                                  =             64
  CTRL_FLAG_VOLATILE                                    =            128
  CTRL_FLAG_HAS_PAYLOAD                                 =            256
  CTRL_FLAG_EXECUTE_ON_WRITE                            =            512
  CTRL_FLAG_MODIFY_LAYOUT                               =           1024
  CTRL_FLAG_DYNAMIC_ARRAY                               =           2048
  CTRL_FLAG_NEXT_CTRL                                   = 2147483648_i64
  CTRL_FLAG_NEXT_COMPOUND                               =     1073741824
  CID_MAX_CTRLS                                         =           1024
  CID_PRIVATE_BASE                                      =      134217728
  TUNER_CAP_LOW                                         =              1
  TUNER_CAP_NORM                                        =              2
  TUNER_CAP_HWSEEK_BOUNDED                              =              4
  TUNER_CAP_HWSEEK_WRAP                                 =              8
  TUNER_CAP_STEREO                                      =             16
  TUNER_CAP_LANG2                                       =             32
  TUNER_CAP_SAP                                         =             32
  TUNER_CAP_LANG1                                       =             64
  TUNER_CAP_RDS                                         =            128
  TUNER_CAP_RDS_BLOCK_IO                                =            256
  TUNER_CAP_RDS_CONTROLS                                =            512
  TUNER_CAP_FREQ_BANDS                                  =           1024
  TUNER_CAP_HWSEEK_PROG_LIM                             =           2048
  TUNER_CAP_1HZ                                         =           4096
  TUNER_SUB_MONO                                        =              1
  TUNER_SUB_STEREO                                      =              2
  TUNER_SUB_LANG2                                       =              4
  TUNER_SUB_SAP                                         =              4
  TUNER_SUB_LANG1                                       =              8
  TUNER_SUB_RDS                                         =             16
  TUNER_MODE_MONO                                       =              0
  TUNER_MODE_STEREO                                     =              1
  TUNER_MODE_LANG2                                      =              2
  TUNER_MODE_SAP                                        =              2
  TUNER_MODE_LANG1                                      =              3
  TUNER_MODE_LANG1_LANG2                                =              4
  RDS_BLOCK_MSK                                         =              7
  RDS_BLOCK_A                                           =              0
  RDS_BLOCK_B                                           =              1
  RDS_BLOCK_C                                           =              2
  RDS_BLOCK_D                                           =              3
  RDS_BLOCK_C_ALT                                       =              4
  RDS_BLOCK_INVALID                                     =              7
  RDS_BLOCK_CORRECTED                                   =             64
  RDS_BLOCK_ERROR                                       =            128
  AUDCAP_STEREO                                         =              1
  AUDCAP_AVL                                            =              2
  AUDMODE_AVL                                           =              1
  EVENT_ALL                                             =              0
  EVENT_VSYNC                                           =              1
  EVENT_EOS                                             =              2
  EVENT_CTRL                                            =              3
  EVENT_FRAME_SYNC                                      =              4
  EVENT_SOURCE_CHANGE                                   =              5
  EVENT_MOTION_DET                                      =              6
  EVENT_PRIVATE_START                                   =      134217728
  CHIP_MATCH_BRIDGE                                     =              0
  CHIP_MATCH_SUBDEV                                     =              4
  CHIP_MATCH_I2C_DRIVER                                 =              1
  CHIP_MATCH_I2C_ADDR                                   =              2
  CHIP_MATCH_AC97                                       =              3
  CAP_ASYNCIO                                           =       33554432

  struct Edid
    pad : X__U32
    start_block : X__U32
    blocks : X__U32
    reserved : X__U32[5]
    edid : X__U8*
  end

  alias X__U32 = LibC::UInt
  alias X__U8 = UInt8

  struct CtrlH264Sps
    profile_idc : X__U8
    constraint_set_flags : X__U8
    level_idc : X__U8
    seq_parameter_set_id : X__U8
    chroma_format_idc : X__U8
    bit_depth_luma_minus8 : X__U8
    bit_depth_chroma_minus8 : X__U8
    log2_max_frame_num_minus4 : X__U8
    pic_order_cnt_type : X__U8
    log2_max_pic_order_cnt_lsb_minus4 : X__U8
    max_num_ref_frames : X__U8
    num_ref_frames_in_pic_order_cnt_cycle : X__U8
    offset_for_ref_frame : X__S32[255]
    offset_for_non_ref_pic : X__S32
    offset_for_top_to_bottom_field : X__S32
    pic_width_in_mbs_minus1 : X__U16
    pic_height_in_map_units_minus1 : X__U16
    flags : X__U32
  end

  alias X__S32 = LibC::Int
  alias X__U16 = LibC::UShort

  struct CtrlH264Pps
    pic_parameter_set_id : X__U8
    seq_parameter_set_id : X__U8
    num_slice_groups_minus1 : X__U8
    num_ref_idx_l0_default_active_minus1 : X__U8
    num_ref_idx_l1_default_active_minus1 : X__U8
    weighted_bipred_idc : X__U8
    pic_init_qp_minus26 : X__S8
    pic_init_qs_minus26 : X__S8
    chroma_qp_index_offset : X__S8
    second_chroma_qp_index_offset : X__S8
    flags : X__U16
  end

  alias X__S8 = LibC::Char

  struct CtrlH264ScalingMatrix
    scaling_list_4x4 : X__U8[16][6]
    scaling_list_8x8 : X__U8[64][6]
  end

  struct H264WeightFactors
    luma_weight : X__S16[32]
    luma_offset : X__S16[32]
    chroma_weight : X__S16[2][32]
    chroma_offset : X__S16[2][32]
  end

  alias X__S16 = LibC::Short

  struct CtrlH264PredWeights
    luma_log2_weight_denom : X__U16
    chroma_log2_weight_denom : X__U16
    weight_factors : H264WeightFactors[2]
  end

  struct H264Reference
    fields : X__U8
    index : X__U8
  end

  struct CtrlH264SliceParams
    header_bit_size : X__U32
    first_mb_in_slice : X__U32
    slice_type : X__U8
    colour_plane_id : X__U8
    redundant_pic_cnt : X__U8
    cabac_init_idc : X__U8
    slice_qp_delta : X__S8
    slice_qs_delta : X__S8
    disable_deblocking_filter_idc : X__U8
    slice_alpha_c0_offset_div2 : X__S8
    slice_beta_offset_div2 : X__S8
    num_ref_idx_l0_active_minus1 : X__U8
    num_ref_idx_l1_active_minus1 : X__U8
    reserved : X__U8
    ref_pic_list0 : H264Reference[32]
    ref_pic_list1 : H264Reference[32]
    flags : X__U32
  end

  struct H264DpbEntry
    reference_ts : X__U64
    pic_num : X__U32
    frame_num : X__U16
    fields : X__U8
    reserved : X__U8[5]
    top_field_order_cnt : X__S32
    bottom_field_order_cnt : X__S32
    flags : X__U32
  end

  alias X__U64 = LibC::ULongLong

  struct CtrlH264DecodeParams
    dpb : H264DpbEntry[16]
    nal_ref_idc : X__U16
    frame_num : X__U16
    top_field_order_cnt : X__S32
    bottom_field_order_cnt : X__S32
    idr_pic_id : X__U16
    pic_order_cnt_lsb : X__U16
    delta_pic_order_cnt_bottom : X__S32
    delta_pic_order_cnt0 : X__S32
    delta_pic_order_cnt1 : X__S32
    dec_ref_pic_marking_bit_size : X__U32
    pic_order_cnt_bit_size : X__U32
    slice_group_change_cycle : X__U32
    reserved : X__U32
    flags : X__U32
  end

  struct CtrlFwhtParams
    backward_ref_ts : X__U64
    version : X__U32
    width : X__U32
    height : X__U32
    flags : X__U32
    colorspace : X__U32
    xfer_func : X__U32
    ycbcr_enc : X__U32
    quantization : X__U32
  end

  struct Vp8Segment
    quant_update : X__S8[4]
    lf_update : X__S8[4]
    segment_probs : X__U8[3]
    padding : X__U8
    flags : X__U32
  end

  struct Vp8LoopFilter
    ref_frm_delta : X__S8[4]
    mb_mode_delta : X__S8[4]
    sharpness_level : X__U8
    level : X__U8
    padding : X__U16
    flags : X__U32
  end

  struct Vp8Quantization
    y_ac_qi : X__U8
    y_dc_delta : X__S8
    y2_dc_delta : X__S8
    y2_ac_delta : X__S8
    uv_dc_delta : X__S8
    uv_ac_delta : X__S8
    padding : X__U16
  end

  struct Vp8Entropy
    coeff_probs : X__U8[11][3][8][4]
    y_mode_probs : X__U8[4]
    uv_mode_probs : X__U8[3]
    mv_probs : X__U8[19][2]
    padding : X__U8[3]
  end

  struct Vp8EntropyCoderState
    range : X__U8
    value : X__U8
    bit_count : X__U8
    padding : X__U8
  end

  struct CtrlVp8Frame
    segment : Vp8Segment
    lf : Vp8LoopFilter
    quant : Vp8Quantization
    entropy : Vp8Entropy
    coder_state : Vp8EntropyCoderState
    width : X__U16
    height : X__U16
    horizontal_scale : X__U8
    vertical_scale : X__U8
    version : X__U8
    prob_skip_false : X__U8
    prob_intra : X__U8
    prob_last : X__U8
    prob_gf : X__U8
    num_dct_parts : X__U8
    first_part_size : X__U32
    first_part_header_bits : X__U32
    dct_part_sizes : X__U32[8]
    last_frame_ts : X__U64
    golden_frame_ts : X__U64
    alt_frame_ts : X__U64
    flags : X__U64
  end

  struct CtrlMpeg2Sequence
    horizontal_size : X__U16
    vertical_size : X__U16
    vbv_buffer_size : X__U32
    profile_and_level_indication : X__U16
    chroma_format : X__U8
    flags : X__U8
  end

  struct CtrlMpeg2Picture
    backward_ref_ts : X__U64
    forward_ref_ts : X__U64
    flags : X__U32
    f_code : X__U8[2][2]
    picture_coding_type : X__U8
    picture_structure : X__U8
    intra_dc_precision : X__U8
    reserved : X__U8[5]
  end

  struct CtrlMpeg2Quantisation
    intra_quantiser_matrix : X__U8[64]
    non_intra_quantiser_matrix : X__U8[64]
    chroma_intra_quantiser_matrix : X__U8[64]
    chroma_non_intra_quantiser_matrix : X__U8[64]
  end

  struct CtrlHevcSps
    video_parameter_set_id : X__U8
    seq_parameter_set_id : X__U8
    pic_width_in_luma_samples : X__U16
    pic_height_in_luma_samples : X__U16
    bit_depth_luma_minus8 : X__U8
    bit_depth_chroma_minus8 : X__U8
    log2_max_pic_order_cnt_lsb_minus4 : X__U8
    sps_max_dec_pic_buffering_minus1 : X__U8
    sps_max_num_reorder_pics : X__U8
    sps_max_latency_increase_plus1 : X__U8
    log2_min_luma_coding_block_size_minus3 : X__U8
    log2_diff_max_min_luma_coding_block_size : X__U8
    log2_min_luma_transform_block_size_minus2 : X__U8
    log2_diff_max_min_luma_transform_block_size : X__U8
    max_transform_hierarchy_depth_inter : X__U8
    max_transform_hierarchy_depth_intra : X__U8
    pcm_sample_bit_depth_luma_minus1 : X__U8
    pcm_sample_bit_depth_chroma_minus1 : X__U8
    log2_min_pcm_luma_coding_block_size_minus3 : X__U8
    log2_diff_max_min_pcm_luma_coding_block_size : X__U8
    num_short_term_ref_pic_sets : X__U8
    num_long_term_ref_pics_sps : X__U8
    chroma_format_idc : X__U8
    sps_max_sub_layers_minus1 : X__U8
    reserved : X__U8[6]
    flags : X__U64
  end

  struct CtrlHevcPps
    pic_parameter_set_id : X__U8
    num_extra_slice_header_bits : X__U8
    num_ref_idx_l0_default_active_minus1 : X__U8
    num_ref_idx_l1_default_active_minus1 : X__U8
    init_qp_minus26 : X__S8
    diff_cu_qp_delta_depth : X__U8
    pps_cb_qp_offset : X__S8
    pps_cr_qp_offset : X__S8
    num_tile_columns_minus1 : X__U8
    num_tile_rows_minus1 : X__U8
    column_width_minus1 : X__U8[20]
    row_height_minus1 : X__U8[22]
    pps_beta_offset_div2 : X__S8
    pps_tc_offset_div2 : X__S8
    log2_parallel_merge_level_minus2 : X__U8
    reserved : X__U8
    flags : X__U64
  end

  struct HevcDpbEntry
    timestamp : X__U64
    flags : X__U8
    field_pic : X__U8
    reserved : X__U16
    pic_order_cnt_val : X__S32
  end

  struct HevcPredWeightTable
    delta_luma_weight_l0 : X__S8[16]
    luma_offset_l0 : X__S8[16]
    delta_chroma_weight_l0 : X__S8[2][16]
    chroma_offset_l0 : X__S8[2][16]
    delta_luma_weight_l1 : X__S8[16]
    luma_offset_l1 : X__S8[16]
    delta_chroma_weight_l1 : X__S8[2][16]
    chroma_offset_l1 : X__S8[2][16]
    luma_log2_weight_denom : X__U8
    delta_chroma_log2_weight_denom : X__S8
  end

  struct CtrlHevcSliceParams
    bit_size : X__U32
    data_byte_offset : X__U32
    num_entry_point_offsets : X__U32
    nal_unit_type : X__U8
    nuh_temporal_id_plus1 : X__U8
    slice_type : X__U8
    colour_plane_id : X__U8
    slice_pic_order_cnt : X__S32
    num_ref_idx_l0_active_minus1 : X__U8
    num_ref_idx_l1_active_minus1 : X__U8
    collocated_ref_idx : X__U8
    five_minus_max_num_merge_cand : X__U8
    slice_qp_delta : X__S8
    slice_cb_qp_offset : X__S8
    slice_cr_qp_offset : X__S8
    slice_act_y_qp_offset : X__S8
    slice_act_cb_qp_offset : X__S8
    slice_act_cr_qp_offset : X__S8
    slice_beta_offset_div2 : X__S8
    slice_tc_offset_div2 : X__S8
    pic_struct : X__U8
    reserved0 : X__U8[3]
    slice_segment_addr : X__U32
    ref_idx_l0 : X__U8[16]
    ref_idx_l1 : X__U8[16]
    short_term_ref_pic_set_size : X__U16
    long_term_ref_pic_set_size : X__U16
    pred_weight_table : HevcPredWeightTable
    reserved1 : X__U8[2]
    flags : X__U64
  end

  struct CtrlHevcDecodeParams
    pic_order_cnt_val : X__S32
    short_term_ref_pic_set_size : X__U16
    long_term_ref_pic_set_size : X__U16
    num_active_dpb_entries : X__U8
    num_poc_st_curr_before : X__U8
    num_poc_st_curr_after : X__U8
    num_poc_lt_curr : X__U8
    poc_st_curr_before : X__U8[16]
    poc_st_curr_after : X__U8[16]
    poc_lt_curr : X__U8[16]
    reserved : X__U8[4]
    dpb : HevcDpbEntry[16]
    flags : X__U64
  end

  struct CtrlHevcScalingMatrix
    scaling_list_4x4 : X__U8[16][6]
    scaling_list_8x8 : X__U8[64][6]
    scaling_list_16x16 : X__U8[64][6]
    scaling_list_32x32 : X__U8[64][2]
    scaling_list_dc_coef_16x16 : X__U8[6]
    scaling_list_dc_coef_32x32 : X__U8[2]
  end

  struct CtrlHdr10CllInfo
    max_content_light_level : X__U16
    max_pic_average_light_level : X__U16
  end

  struct CtrlHdr10MasteringDisplay
    display_primaries_x : X__U16[3]
    display_primaries_y : X__U16[3]
    white_point_x : X__U16
    white_point_y : X__U16
    max_display_mastering_luminance : X__U32
    min_display_mastering_luminance : X__U32
  end

  struct Vp9LoopFilter
    ref_deltas : X__S8[4]
    mode_deltas : X__S8[2]
    level : X__U8
    sharpness : X__U8
    flags : X__U8
    reserved : X__U8[7]
  end

  struct Vp9Quantization
    base_q_idx : X__U8
    delta_q_y_dc : X__S8
    delta_q_uv_dc : X__S8
    delta_q_uv_ac : X__S8
    reserved : X__U8[4]
  end

  struct Vp9Segmentation
    feature_data : X__S16[4][8]
    feature_enabled : X__U8[8]
    tree_probs : X__U8[7]
    pred_probs : X__U8[3]
    flags : X__U8
    reserved : X__U8[5]
  end

  struct CtrlVp9Frame
    lf : Vp9LoopFilter
    quant : Vp9Quantization
    seg : Vp9Segmentation
    flags : X__U32
    compressed_header_size : X__U16
    uncompressed_header_size : X__U16
    frame_width_minus_1 : X__U16
    frame_height_minus_1 : X__U16
    render_width_minus_1 : X__U16
    render_height_minus_1 : X__U16
    last_frame_ts : X__U64
    golden_frame_ts : X__U64
    alt_frame_ts : X__U64
    ref_frame_sign_bias : X__U8
    reset_frame_context : X__U8
    frame_context_idx : X__U8
    profile : X__U8
    bit_depth : X__U8
    interpolation_filter : X__U8
    tile_cols_log2 : X__U8
    tile_rows_log2 : X__U8
    reference_mode : X__U8
    reserved : X__U8[7]
  end

  struct Vp9MvProbs
    joint : X__U8[3]
    sign : X__U8[2]
    classes : X__U8[10][2]
    class0_bit : X__U8[2]
    bits : X__U8[10][2]
    class0_fr : X__U8[3][2][2]
    fr : X__U8[3][2]
    class0_hp : X__U8[2]
    hp : X__U8[2]
  end

  struct CtrlVp9CompressedHdr
    tx_mode : X__U8
    tx8 : X__U8[1][2]
    tx16 : X__U8[2][2]
    tx32 : X__U8[3][2]
    coef : X__U8[3][6][6][2][2][4]
    skip : X__U8[3]
    inter_mode : X__U8[3][7]
    interp_filter : X__U8[2][4]
    is_inter : X__U8[4]
    comp_mode : X__U8[5]
    single_ref : X__U8[2][5]
    comp_ref : X__U8[5]
    y_mode : X__U8[9][4]
    uv_mode : X__U8[9][10]
    partition : X__U8[3][16]
    mv : Vp9MvProbs
  end

  struct Rect
    left : X__S32
    top : X__S32
    width : X__U32
    height : X__U32
  end

  struct Fract
    numerator : X__U32
    denominator : X__U32
  end

  struct Area
    width : X__U32
    height : X__U32
  end

  struct Capability
    driver : X__U8[16]
    card : X__U8[32]
    bus_info : X__U8[32]
    version : X__U32
    capabilities : X__U32
    device_caps : X__U32
    reserved : X__U32[3]
  end

  struct PixFormat
    width : X__U32
    height : X__U32
    pixelformat : X__U32
    field : X__U32
    bytesperline : X__U32
    sizeimage : X__U32
    colorspace : X__U32
    priv : X__U32
    flags : X__U32
    quantization : X__U32
    xfer_func : X__U32
  end

  struct Fmtdesc
    index : X__U32
    type : X__U32
    flags : X__U32
    description : X__U8[32]
    pixelformat : X__U32
    mbus_code : X__U32
    reserved : X__U32[3]
  end

  struct FrmsizeDiscrete
    width : X__U32
    height : X__U32
  end

  struct FrmsizeStepwise
    min_width : X__U32
    max_width : X__U32
    step_width : X__U32
    min_height : X__U32
    max_height : X__U32
    step_height : X__U32
  end

  union Frmsize
    discrete : FrmsizeDiscrete
    stepwise : FrmsizeStepwise
  end

  struct Frmsizeenum
    index : X__U32
    pixel_format : X__U32
    type : X__U32
    frmsize : Frmsize
    reserved : X__U32[2]
  end

  struct FrmivalStepwise
    min : Fract
    max : Fract
    step : Fract
  end

  union Frmival
    discrete : Fract
    stepwise : FrmivalStepwise
  end

  struct Frmivalenum
    index : X__U32
    pixel_format : X__U32
    width : X__U32
    height : X__U32
    type : X__U32
    frmival : Frmival
    reserved : X__U32[2]
  end

  struct Timecode
    type : X__U32
    flags : X__U32
    frames : X__U8
    seconds : X__U8
    minutes : X__U8
    hours : X__U8
    userbits : X__U8[4]
  end

  struct Jpegcompression
    quality : LibC::Int
    ap_pn : LibC::Int
    app_len : LibC::Int
    app_data : LibC::Char[60]
    com_len : LibC::Int
    com_data : LibC::Char[60]
    jpeg_markers : X__U32
  end

  struct Requestbuffers
    count : X__U32
    type : X__U32   # enum v4l2_buf_type
    memory : X__U32 # enum v4l2_memory
    capabilities : X__U32
    flags : X__U8
    reserved : X__U8[3]
  end

  struct Plane
    bytesused : X__U32
    length : X__U32
    m : PlaneM
    data_offset : X__U32
    reserved : X__U32[11]
  end

  union PlaneM
    mem_offset : X__U32
    userptr : LibC::ULong
    fd : X__S32
  end

  struct Buffer
    index : X__U32
    type : X__U32
    bytesused : X__U32
    flags : X__U32
    field : X__U32
    timestamp : Timeval
    timecode : Timecode
    sequence : X__U32
    memory : X__U32
    m : BufferM
    length : X__U32
    reserved2 : X__U32
    request_fd : X__U32
  end

  struct Timeval
    tv_sec : X__TimeT
    tv_usec : X__SusecondsT
  end

  alias X__TimeT = LibC::Long
  alias X__SusecondsT = LibC::Long

  union BufferM
    offset : X__U32
    userptr : LibC::ULong
    planes : Plane*
    fd : X__S32
  end

  fun timeval_to_ns = v4l2_timeval_to_ns(tv : Timeval*) : X__U64

  struct Exportbuffer
    type : X__U32
    index : X__U32
    plane : X__U32
    flags : X__U32
    fd : X__S32
    reserved : X__U32[11]
  end

  struct Framebuffer
    capability : X__U32
    flags : X__U32
    base : Void*
    fmt : FramebufferFmt
  end

  struct FramebufferFmt
    width : X__U32
    height : X__U32
    pixelformat : X__U32
    field : X__U32
    bytesperline : X__U32
    sizeimage : X__U32
    colorspace : X__U32
    priv : X__U32
  end

  struct Clip
    c : Rect
    next : Clip*
  end

  struct Window
    w : Rect
    field : X__U32
    chromakey : X__U32
    clips : Clip*
    clipcount : X__U32
    bitmap : Void*
    global_alpha : X__U8
  end

  struct Captureparm
    capability : X__U32
    capturemode : X__U32
    timeperframe : Fract
    extendedmode : X__U32
    readbuffers : X__U32
    reserved : X__U32[4]
  end

  struct Outputparm
    capability : X__U32
    outputmode : X__U32
    timeperframe : Fract
    extendedmode : X__U32
    writebuffers : X__U32
    reserved : X__U32[4]
  end

  struct Cropcap
    type : X__U32
    bounds : Rect
    defrect : Rect
    pixelaspect : Fract
  end

  struct Crop
    type : X__U32
    c : Rect
  end

  struct Selection
    type : X__U32
    target : X__U32
    flags : X__U32
    r : Rect
    reserved : X__U32[9]
  end

  struct Standard
    index : X__U32
    id : StdId
    name : X__U8[24]
    frameperiod : Fract
    framelines : X__U32
    reserved : X__U32[4]
  end

  alias StdId = X__U64

  struct BtTimings
    width : X__U32
    height : X__U32
    interlaced : X__U32
    polarities : X__U32
    pixelclock : X__U64
    hfrontporch : X__U32
    hsync : X__U32
    hbackporch : X__U32
    vfrontporch : X__U32
    vsync : X__U32
    vbackporch : X__U32
    il_vfrontporch : X__U32
    il_vsync : X__U32
    il_vbackporch : X__U32
    standards : X__U32
    flags : X__U32
    picture_aspect : Fract
    cea861_vic : X__U8
    hdmi_vic : X__U8
    reserved : X__U8[46]
  end

  struct DvTimings
    type : X__U32
  end

  struct EnumDvTimings
    index : X__U32
    pad : X__U32
    reserved : X__U32[2]
    timings : DvTimings
  end

  struct BtTimingsCap
    min_width : X__U32
    max_width : X__U32
    min_height : X__U32
    max_height : X__U32
    min_pixelclock : X__U64
    max_pixelclock : X__U64
    standards : X__U32
    capabilities : X__U32
    reserved : X__U32[16]
  end

  struct DvTimingsCap
    type : X__U32
    pad : X__U32
    reserved : X__U32[2]
  end

  struct Input
    index : X__U32
    name : X__U8[32]
    type : X__U32
    audioset : X__U32
    tuner : X__U32
    std : StdId
    status : X__U32
    capabilities : X__U32
    reserved : X__U32[3]
  end

  struct Output
    index : X__U32
    name : X__U8[32]
    type : X__U32
    audioset : X__U32
    modulator : X__U32
    std : StdId
    capabilities : X__U32
    reserved : X__U32[3]
  end

  struct Control
    id : X__U32
    value : X__S32
  end

  struct ExtControl
    id : X__U32
    size : X__U32
    reserved2 : X__U32[1]
  end

  struct ExtControls
    count : X__U32
    error_idx : X__U32
    request_fd : X__S32
    reserved : X__U32[1]
    controls : ExtControl*
  end

  struct Queryctrl
    id : X__U32
    type : X__U32
    name : X__U8[32]
    minimum : X__S32
    maximum : X__S32
    step : X__S32
    default_value : X__S32
    flags : X__U32
    reserved : X__U32[2]
  end

  struct QueryExtCtrl
    id : X__U32
    type : X__U32
    name : LibC::Char[32]
    minimum : X__S64
    maximum : X__S64
    step : X__U64
    default_value : X__S64
    flags : X__U32
    elem_size : X__U32
    elems : X__U32
    nr_of_dims : X__U32
    dims : X__U32[4]
    reserved : X__U32[32]
  end

  alias X__S64 = LibC::LongLong

  struct Querymenu
    id : X__U32
    index : X__U32
    reserved : X__U32
  end

  struct Tuner
    index : X__U32
    name : X__U8[32]
    type : X__U32
    capability : X__U32
    rangelow : X__U32
    rangehigh : X__U32
    rxsubchans : X__U32
    audmode : X__U32
    signal : X__S32
    afc : X__S32
    reserved : X__U32[4]
  end

  struct Modulator
    index : X__U32
    name : X__U8[32]
    capability : X__U32
    rangelow : X__U32
    rangehigh : X__U32
    txsubchans : X__U32
    type : X__U32
    reserved : X__U32[3]
  end

  struct Frequency
    tuner : X__U32
    type : X__U32
    frequency : X__U32
    reserved : X__U32[8]
  end

  struct FrequencyBand
    tuner : X__U32
    type : X__U32
    index : X__U32
    capability : X__U32
    rangelow : X__U32
    rangehigh : X__U32
    modulation : X__U32
    reserved : X__U32[9]
  end

  struct HwFreqSeek
    tuner : X__U32
    type : X__U32
    seek_upward : X__U32
    wrap_around : X__U32
    spacing : X__U32
    rangelow : X__U32
    rangehigh : X__U32
    reserved : X__U32[5]
  end

  struct RdsData
    lsb : X__U8
    msb : X__U8
    block : X__U8
  end

  struct Audio
    index : X__U32
    name : X__U8[32]
    capability : X__U32
    mode : X__U32
    reserved : X__U32[2]
  end

  struct Audioout
    index : X__U32
    name : X__U8[32]
    capability : X__U32
    mode : X__U32
    reserved : X__U32[2]
  end

  struct EncIdxEntry
    offset : X__U64
    pts : X__U64
    length : X__U32
    flags : X__U32
    reserved : X__U32[2]
  end

  struct EncIdx
    entries : X__U32
    entries_cap : X__U32
    reserved : X__U32[4]
    entry : EncIdxEntry[64]
  end

  struct EncoderCmd
    cmd : X__U32
    flags : X__U32
  end

  struct DecoderCmd
    cmd : X__U32
    flags : X__U32
  end

  struct VbiFormat
    sampling_rate : X__U32
    offset : X__U32
    samples_per_line : X__U32
    sample_format : X__U32
    start : X__S32[2]
    count : X__U32[2]
    flags : X__U32
    reserved : X__U32[2]
  end

  struct SlicedVbiFormat
    service_set : X__U16
    service_lines : X__U16[24][2]
    io_size : X__U32
    reserved : X__U32[2]
  end

  struct SlicedVbiCap
    service_set : X__U16
    service_lines : X__U16[24][2]
    type : X__U32
    reserved : X__U32[3]
  end

  struct SlicedVbiData
    id : X__U32
    field : X__U32
    line : X__U32
    reserved : X__U32
    data : X__U8[48]
  end

  struct MpegVbiItv0Line
    id : X__U8
    data : X__U8[42]
  end

  struct MpegVbiItv0
    linemask : X__Le32[2]
    line : MpegVbiItv0Line[35]
  end

  alias X__Le32 = X__U32

  struct MpegVbiITV0
    line : MpegVbiItv0Line[36]
  end

  struct MpegVbiFmtIvtv
    magic : X__U8[4]
  end

  struct PlanePixFormat
    sizeimage : X__U32
    bytesperline : X__U32
    reserved : X__U16[6]
  end

  struct PixFormatMplane
    width : X__U32
    height : X__U32
    pixelformat : X__U32
    field : X__U32
    colorspace : X__U32
    plane_fmt : PlanePixFormat[8]
    num_planes : X__U8
    flags : X__U8
    quantization : X__U8
    xfer_func : X__U8
    reserved : X__U8[7]
  end

  struct SdrFormat
    pixelformat : X__U32
    buffersize : X__U32
    reserved : X__U8[24]
  end

  struct MetaFormat
    dataformat : X__U32
    buffersize : X__U32
  end

  struct Format
    type : X__U32
    fmt : FormatFmt
  end

  union FormatFmt
    pix : PixFormat
    pix_mp : PixFormatMplane
    win : Window
    vbi : VbiFormat
    sliced : SlicedVbiFormat
    sdr : SdrFormat
    meta : MetaFormat
    raw_data : X__U8[200]
  end

  struct Streamparm
    type : X__U32
    parm : StreamparmParm
  end

  union StreamparmParm
    capture : Captureparm
    output : Outputparm
    raw_data : X__U8[200]
  end

  struct EventVsync
    field : X__U8
  end

  struct EventCtrl
    changes : X__U32
    type : X__U32
    flags : X__U32
    minimum : X__S32
    maximum : X__S32
    step : X__S32
    default_value : X__S32
  end

  struct EventFrameSync
    frame_sequence : X__U32
  end

  struct EventSrcChange
    changes : X__U32
  end

  struct EventMotionDet
    flags : X__U32
    frame_sequence : X__U32
    region_mask : X__U32
  end

  struct Event
    type : X__U32
    u : EventU
    pending : X__U32
    sequence : X__U32
    timestamp : Timespec
    id : X__U32
    reserved : X__U32[8]
  end

  union EventU
    vsync : EventVsync
    ctrl : EventCtrl
    frame_sync : EventFrameSync
    src_change : EventSrcChange
    motion_det : EventMotionDet
    data : X__U8[64]
  end

  struct Timespec
    tv_sec : X__TimeT
    tv_nsec : X__SyscallSlongT
  end

  alias X__SyscallSlongT = LibC::Long

  struct EventSubscription
    type : X__U32
    id : X__U32
    flags : X__U32
    reserved : X__U32[5]
  end

  struct DbgMatch
    type : X__U32
  end

  struct DbgRegister
    match : DbgMatch
    size : X__U32
    reg : X__U64
    val : X__U64
  end

  struct DbgChipInfo
    match : DbgMatch
    name : LibC::Char[32]
    flags : X__U32
    reserved : X__U32[32]
  end

  struct CreateBuffers
    index : X__U32
    count : X__U32
    memory : X__U32
    format : Format
    capabilities : X__U32
    flags : X__U32
    reserved : X__U32[6]
  end
end
