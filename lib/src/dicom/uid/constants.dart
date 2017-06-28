// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

/// This library contains compile time constant definitions of "Well Known" [UID]s
/// and there corresponding [String] values.  All names start with 'k'.
/// This library should be imported as 'import "uid/ascii_constants.dart' as Uid"
///
/// Note: These constants names use the ODW convention of starting with
/// the letter "k" with followed by the DICOM keyword.

const kVerificationSOPClass = "1.2.840.10008.1.1";
const kImplicitVRLittleEndian = "1.2.840.10008.1.2";
const kImplicitVRLittleEndianDefaultTransferSyntaxforDICOM = "1.2.840.10008.1.2";
const kExplicitVRLittleEndian = "1.2.840.10008.1.2.1";
const kDeflatedExplicitVRLittleEndian = "1.2.840.10008.1.2.1.99";
const kExplicitVRBigEndian_Retired = "1.2.840.10008.1.2.2";
const kJPEGBaseline_1DefaultTransferSyntaxforLossyJPEG8BitImageCompression =
    "1.2.840.10008.1.2.4.50";
const kJPEGExtended_2_4DefaultTransferSyntaxforLossyJPEG12BitImageCompression_4 =
    "1.2.840.10008.1.2.4.51";
const kJPEGExtended_3_5_Retired = "1.2.840.10008.1.2.4.52";
const kJPEGSpectralSelectionNon_Hierarchical_6_8_Retired = "1.2.840.10008.1.2.4.53";
const kJPEGSpectralSelectionNon_Hierarchical_7_9_Retired = "1.2.840.10008.1.2.4.54";
const kJPEGFullProgressionNon_Hierarchical_10_12_Retired = "1.2.840.10008.1.2.4.55";
const kJPEGFullProgressionNon_Hierarchical_11_13_Retired = "1.2.840.10008.1.2.4.56";
const kJPEGLosslessNon_Hierarchical_14 = "1.2.840.10008.1.2.4.57";
const kJPEGLosslessNon_Hierarchical_15_Retired = "1.2.840.10008.1.2.4.58";
const kJPEGExtendedHierarchical_16_18_Retired = "1.2.840.10008.1.2.4.59";
const kJPEGExtendedHierarchical_17_19_Retired = "1.2.840.10008.1.2.4.60";
const kJPEGSpectralSelectionHierarchical_20_22_Retired = "1.2.840.10008.1.2.4.61";
const kJPEGSpectralSelectionHierarchical_21_23_Retired = "1.2.840.10008.1.2.4.62";
const kJPEGFullProgressionHierarchical_24_26_Retired = "1.2.840.10008.1.2.4.63";
const kJPEGFullProgressionHierarchical_25_27_Retired = "1.2.840.10008.1.2.4.64";
const kJPEGLosslessHierarchical_28_Retired = "1.2.840.10008.1.2.4.65";
const kJPEGLosslessHierarchical_29_Retired = "1.2.840.10008.1.2.4.66";
const kJPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1DefaultTransferSyntaxforLosslessJPEGImageCompression =
    "1.2.840.10008.1.2.4.70";
const kJPEG_LSLosslessImageCompression = "1.2.840.10008.1.2.4.80";
const kJPEG_LSLossyImageCompression = "1.2.840.10008.1.2.4.81";
const kJPEG2000ImageCompressionLosslessOnly = "1.2.840.10008.1.2.4.90";
const kJPEG2000ImageCompression = "1.2.840.10008.1.2.4.91";
const kJPEG2000Part2Multi_componentImageCompressionLosslessOnly = "1.2.840.10008.1.2.4.92";
const kJPEG2000Part2Multi_componentImageCompression = "1.2.840.10008.1.2.4.93";
const kJPIPReferenced = "1.2.840.10008.1.2.4.94";
const kJPIPReferencedDeflate = "1.2.840.10008.1.2.4.95";
const kMPEG2MainProfile_MainLevel = "1.2.840.10008.1.2.4.100";
const kMPEG2MainProfile_HighLevel = "1.2.840.10008.1.2.4.101";
const kMPEG_4AVC_H264HighProfile_Level41 = "1.2.840.10008.1.2.4.102";
const kMPEG_4AVC_H264BD_compatibleHighProfile_Level41 = "1.2.840.10008.1.2.4.103";
const kRLELossless = "1.2.840.10008.1.2.5";
const kRFC2557MIMEencapsulation = "1.2.840.10008.1.2.6.1";
const kXMLEncoding = "1.2.840.10008.1.2.6.2";
const kMediaStorageDirectoryStorage = "1.2.840.10008.1.3.10";
const kTalairachBrainAtlasFrameofReference = "1.2.840.10008.1.4.1.1";
const kSPM2T1FrameofReference = "1.2.840.10008.1.4.1.2";
const kSPM2T2FrameofReference = "1.2.840.10008.1.4.1.3";
const kSPM2PDFrameofReference = "1.2.840.10008.1.4.1.4";
const kSPM2EPIFrameofReference = "1.2.840.10008.1.4.1.5";
const kSPM2FILT1FrameofReference = "1.2.840.10008.1.4.1.6";
const kSPM2PETFrameofReference = "1.2.840.10008.1.4.1.7";
const kSPM2TRANSMFrameofReference = "1.2.840.10008.1.4.1.8";
const kSPM2SPECTFrameofReference = "1.2.840.10008.1.4.1.9";
const kSPM2GRAYFrameofReference = "1.2.840.10008.1.4.1.10";
const kSPM2WHITEFrameofReference = "1.2.840.10008.1.4.1.11";
const kSPM2CSFFrameofReference = "1.2.840.10008.1.4.1.12";
const kSPM2BRAINMASKFrameofReference = "1.2.840.10008.1.4.1.13";
const kSPM2AVG305T1FrameofReference = "1.2.840.10008.1.4.1.14";
const kSPM2AVG152T1FrameofReference = "1.2.840.10008.1.4.1.15";
const kSPM2AVG152T2FrameofReference = "1.2.840.10008.1.4.1.16";
const kSPM2AVG152PDFrameofReference = "1.2.840.10008.1.4.1.17";
const kSPM2SINGLESUBJT1FrameofReference = "1.2.840.10008.1.4.1.18";
const kICBM452T1FrameofReference = "1.2.840.10008.1.4.2.1";
const kICBMSingleSubjectMRIFrameofReference = "1.2.840.10008.1.4.2.2";
const kHotIronColorPaletteSOPInstance = "1.2.840.10008.1.5.1";
const kPETColorPaletteSOPInstance = "1.2.840.10008.1.5.2";
const kHotMetalBlueColorPaletteSOPInstance = "1.2.840.10008.1.5.3";
const kPET20StepColorPaletteSOPInstance = "1.2.840.10008.1.5.4";
const kBasicStudyContentNotificationSOPClass_Retired = "1.2.840.10008.1.9";
const kStorageCommitmentPushModelSOPClass = "1.2.840.10008.1.20.1";
const kStorageCommitmentPushModelSOPInstance = "1.2.840.10008.1.20.1.1";
const kStorageCommitmentPullModelSOPClass_Retired = "1.2.840.10008.1.20.2";
const kStorageCommitmentPullModelSOPInstance_Retired = "1.2.840.10008.1.20.2.1";
const kProceduralEventLoggingSOPClass = "1.2.840.10008.1.40";
const kProceduralEventLoggingSOPInstance = "1.2.840.10008.1.40.1";
const kSubstanceAdministrationLoggingSOPClass = "1.2.840.10008.1.42";
const kSubstanceAdministrationLoggingSOPInstance = "1.2.840.10008.1.42.1";
const kDICOMUIDRegistry = "1.2.840.10008.2.6.1";
const kDICOMControlledTerminology = "1.2.840.10008.2.16.4";
const kDICOMApplicationContextName = "1.2.840.10008.3.1.1.1";
const kDetachedPatientManagementSOPClass_Retired = "1.2.840.10008.3.1.2.1.1";
const kDetachedPatientManagementMetaSOPClass_Retired = "1.2.840.10008.3.1.2.1.4";
const kDetachedVisitManagementSOPClass_Retired = "1.2.840.10008.3.1.2.2.1";
const kDetachedStudyManagementSOPClass_Retired = "1.2.840.10008.3.1.2.3.1";
const kStudyComponentManagementSOPClass_Retired = "1.2.840.10008.3.1.2.3.2";
const kModalityPerformedProcedureStepSOPClass = "1.­2.840.10008.3.1.2.3.3";
const kModalityPerformedProcedureStepRetrieveSOPClass = "1.­2.840.10008.3.1.2.3.4";
const kModalityPerformedProcedureStepNotificationSOPClass = "1.­2.840.10008.3.1.2.3.5";
const kDetachedResultsManagementSOPClass_Retired = "1.2.840.10008.3.1.2.5.1";
const kDetachedResultsManagementMetaSOPClass_Retired = "1.2.840.10008.3.1.2.5.4";
const kDetachedStudyManagementMetaSOPClass_Retired = "1.2.840.10008.3.1.2.5.5";
const kDetachedInterpretationManagementSOPClass_Retired = "1.2.840.10008.3.1.2.6.1";
const kStorageServiceClass = "1.2.840.10008.4.2";
const kBasicFilmSessionSOPClass = "1.2.840.10008.5.1.1.1";
const kBasicFilmBoxSOPClass = "1.2.840.10008.5.1.1.2";
const kBasicGrayscaleImageBoxSOPClass = "1.2.840.10008.5.1.1.4";
const kBasicColorImageBoxSOPClass = "1.2.840.10008.5.1.1.4.1";
const kReferencedImageBoxSOPClass_Retired = "1.2.840.10008.5.1.1.4.2";
const kBasicGrayscalePrintManagementMetaSOPClass = "1.2.840.10008.5.1.1.9";
const kReferencedGrayscalePrintManagementMetaSOPClass_Retired = "1.2.840.10008.5.1.1.9.1";
const kPrintJobSOPClass = "1.2.840.10008.5.1.1.14";
const kBasicAnnotationBoxSOPClass = "1.2.840.10008.5.1.1.15";
const kPrinterSOPClass = "1.2.840.10008.5.1.1.16";
const kPrinterConfigurationRetrievalSOPClass = "1.2.840.10008.5.1.1.16.376";
const kPrinterSOPInstance = "1.2.840.10008.5.1.1.17";
const kPrinterConfigurationRetrievalSOPInstance = "1.2.840.10008.5.1.1.17.376";
const kBasicColorPrintManagementMetaSOPClass = "1.2.840.10008.5.1.1.18";
const kReferencedColorPrintManagementMetaSOPClass_Retired = "1.2.840.10008.5.1.1.18.1";
const kVOILUTBoxSOPClass = "1.2.840.10008.5.1.1.22";
const kPresentationLUTSOPClass = "1.2.840.10008.5.1.1.23";
const kImageOverlayBoxSOPClass_Retired = "1.2.840.10008.5.1.1.24";
const kBasicPrintImageOverlayBoxSOPClass_Retired = "1.2.840.10008.5.1.1.24.1";
const kPrintQueueSOPInstance_Retired = "1.2.840.10008.5.1.1.25";
const kPrintQueueManagementSOPClass_Retired = "1.2.840.10008.5.1.1.26";
const kStoredPrintStorageSOPClass_Retired = "1.2.840.10008.5.1.1.27";
const kHardcopyGrayscaleImageStorageSOPClass_Retired = "1.2.840.10008.5.1.1.29";
const kHardcopyColorImageStorageSOPClass_Retired = "1.2.840.10008.5.1.1.30";
const kPullPrintRequestSOPClass_Retired = "1.2.840.10008.5.1.1.31";
const kPullStoredPrintManagementMetaSOPClass_Retired = "1.2.840.10008.5.1.1.32";
const kMediaCreationManagementSOPClassUID = "1.2.840.10008.5.1.1.33";
const kComputedRadiographyImageStorage = "1.2.840.10008.5.1.4.1.1.1";
const kDigitalX_RayImageStorage_ForPresentation = "1.2.840.10008.5.1.4.1.1.1.1";
const kDigitalX_RayImageStorage_ForProcessing = "1.2.840.10008.5.1.4.1.1.1.1.1";
const kDigitalMammographyX_RayImageStorage_ForPresentation = "1.2.840.10008.5.1.4.1.1.1.2";
const kDigitalMammographyX_RayImageStorage_ForProcessing = "1.2.840.10008.5.1.4.1.1.1.2.1";
const kDigitalIntra_OralX_RayImageStorage_ForPresentation = "1.2.840.10008.5.1.4.1.1.1.3";
const kDigitalIntra_OralX_RayImageStorage_ForProcessing = "1.2.840.10008.5.1.4.1.1.1.3.1";
const kCTImageStorage = "1.2.840.10008.5.1.4.1.1.2";
const kEnhancedCTImageStorage = "1.2.840.10008.5.1.4.1.1.2.1";
const kLegacyConvertedEnhancedCTImageStorage = "1.2.840.10008.5.1.4.1.1.2.2";
const kUltrasoundMulti_frameImageStorage_Retired = "1.2.840.10008.5.1.4.1.1.3";
const kUltrasoundMulti_frameImageStorage = "1.2.840.10008.5.1.4.1.1.3.1";
const kMRImageStorage = "1.2.840.10008.5.1.4.1.1.4";
const kEnhancedMRImageStorage = "1.2.840.10008.5.1.4.1.1.4.1";
const kMRSpectroscopyStorage = "1.2.840.10008.5.1.4.1.1.4.2";
const kEnhancedMRColorImageStorage = "1.2.840.10008.5.1.4.1.1.4.3";
const kLegacyConvertedEnhancedMRImageStorage = "1.2.840.10008.5.1.4.1.1.4.4";
const kNuclearMedicineImageStorage_Retired = "1.2.840.10008.5.1.4.1.1.5";
const kUltrasoundImageStorage_Retired = "1.2.840.10008.5.1.4.1.1.6";
const kUltrasoundImageStorage = "1.2.840.10008.5.1.4.1.1.6.1";
const kEnhancedUSVolumeStorage = "1.2.840.10008.5.1.4.1.1.6.2";
const kSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7";
const kMulti_frameSingleBitSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.1";
const kMulti_frameGrayscaleByteSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.2";
const kMulti_frameGrayscaleWordSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.3";
const kMulti_frameTrueColorSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.4";
const kStandaloneOverlayStorage_Retired = "1.2.840.10008.5.1.4.1.1.8";
const kStandaloneCurveStorage_Retired = "1.2.840.10008.5.1.4.1.1.9";
const kWaveformStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.9.1";
const ktwelve_lead_12ECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.1";
const kGeneralECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.2";
const kAmbulatoryECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.3";
const kHemodynamicWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.2.1";
const kCardiacElectrophysiologyWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.3.1";
const kBasicVoiceAudioWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.4.1";
const kGeneralAudioWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.4.2";
const kArterialPulseWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.5.1";
const kRespiratoryWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.6.1";
const kStandaloneModalityLUTStorage_Retired = "1.2.840.10008.5.1.4.1.1.10";
const kStandaloneVOILUTStorage_Retired = "1.2.840.10008.5.1.4.1.1.11";
const kGrayscaleSoftcopyPresentationStateStorageSOPClass = "1.2.840.10008.5.1.4.1.1.11.1";
const kColorSoftcopyPresentationStateStorageSOPClass = "1.2.840.10008.5.1.4.1.1.11.2";
const kPseudo_ColorSoftcopyPresentationStateStorageSOPClass = "1.2.840.10008.5.1.4.1.1.11.3";
const kBlendingSoftcopyPresentationStateStorageSOPClass = "1.2.840.10008.5.1.4.1.1.11.4";
const kXA_XRFGrayscaleSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.5";
const kX_RayAngiographicImageStorage = "1.2.840.10008.5.1.4.1.1.12.1";
const kEnhancedXAImageStorage = "1.2.840.10008.5.1.4.1.1.12.1.1";
const kX_RayRadiofluoroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.12.2";
const kEnhancedXRFImageStorage = "1.2.840.10008.5.1.4.1.1.12.2.1";
const kX_RayAngiographicBi_PlaneImageStorage_Retired = "1.2.840.10008.5.1.4.1.1.12.3";
const kX_Ray3DAngiographicImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.1";
const kX_Ray3DCraniofacialImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.2";
const kBreastTomosynthesisImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.3";
const kIntravascularOpticalCoherenceTomographyImageStorage_ForPresentation =
    "1.2.840.10008.5.1.4.1.1.14.1";
const kIntravascularOpticalCoherenceTomographyImageStorage_ForProcessing =
    "1.2.840.10008.5.1.4.1.1.14.2";
const kNuclearMedicineImageStorage = "1.2.840.10008.5.1.4.1.1.20";
const kRawDataStorage = "1.2.840.10008.5.1.4.1.1.66";
const kSpatialRegistrationStorage = "1.2.840.10008.5.1.4.1.1.66.1";
const kSpatialFiducialsStorage = "1.2.840.10008.5.1.4.1.1.66.2";
const kDeformableSpatialRegistrationStorage = "1.2.840.10008.5.1.4.1.1.66.3";
const kSegmentationStorage = "1.2.840.10008.5.1.4.1.1.66.4";
const kSurfaceSegmentationStorage = "1.2.840.10008.5.1.4.1.1.66.5";
const kRealWorldValueMappingStorage = "1.2.840.10008.5.1.4.1.1.67";
const kSurfaceScanMeshStorage = "1.2.840.10008.5.1.4.1.1.68.1";
const kSurfaceScanPointCloudStorage = "1.2.840.10008.5.1.4.1.1.68.2";
const kVLImageStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.77.1";
const kVLMulti_frameImageStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.77.2";
const kVLEndoscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.1";
const kVideoEndoscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.1.1";
const kVLMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.2";
const kVideoMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.2.1";
const kVLSlide_CoordinatesMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.3";
const kVLPhotographicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.4";
const kVideoPhotographicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.4.1";
const kOphthalmicPhotography8BitImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.1";
const kOphthalmicPhotography16BitImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.2";
const kStereometricRelationshipStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.3";
const kOphthalmicTomographyImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.4";
const kVLWholeSlideMicroscopyImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.6";
const kLensometryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.1";
const kAutorefractionMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.2";
const kKeratometryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.3";
const kSubjectiveRefractionMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.4";
const kVisualAcuityMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.5";
const kSpectaclePrescriptionReportStorage = "1.2.840.10008.5.1.4.1.1.78.6";
const kOphthalmicAxialMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.7";
const kIntraocularLensCalculationsStorage = "1.2.840.10008.5.1.4.1.1.78.8";
const kMacularGridThicknessandVolumeReportStorage = "1.2.840.10008.5.1.4.1.1.79.1";
const kOphthalmicVisualFieldStaticPerimetryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.80.1";
const kOphthalmicThicknessMapStorage = "1.2.840.10008.5.1.4.1.1.81.1";
const kCornealTopographyMapStorage = "11.2.840.10008.5.1.4.1.1.82.1";
const kTextSRStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.88.1";
const kAudioSRStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.88.2";
const kDetailSRStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.88.3";
const kComprehensiveSRStorage_Trial_Retired = "1.2.840.10008.5.1.4.1.1.88.4";
const kBasicTextSRStorage = "1.2.840.10008.5.1.4.1.1.88.11";
const kEnhancedSRStorage = "1.2.840.10008.5.1.4.1.1.88.22";
const kComprehensiveSRStorage = "1.2.840.10008.5.1.4.1.1.88.33";
const kComprehensive3DSRStorage = "1.2.840.10008.5.1.4.1.1.88.34";
const kProcedureLogStorage = "1.2.840.10008.5.1.4.1.1.88.40";
const kMammographyCADSRStorage = "1.2.840.10008.5.1.4.1.1.88.50";
const kKeyObjectSelectionDocumentStorage = "1.2.840.10008.5.1.4.1.1.88.59";
const kChestCADSRStorage = "1.2.840.10008.5.1.4.1.1.88.65";
const kX_RayRadiationDoseSRStorage = "1.2.840.10008.5.1.4.1.1.88.67";
const kColonCADSRStorage = "1.2.840.10008.5.1.4.1.1.88.69";
const kImplantationPlanSRStorage = "1.2.840.10008.5.1.4.1.1.88.70";
const kEncapsulatedPDFStorage = "1.2.840.10008.5.1.4.1.1.104.1";
const kEncapsulatedCDAStorage = "1.2.840.10008.5.1.4.1.1.104.2";
const kPositronEmissionTomographyImageStorage = "1.2.840.10008.5.1.4.1.1.128";
const kLegacyConvertedEnhancedPETImageStorage = "1.2.840.10008.5.1.4.1.1.128.1";
const kStandalonePETCurveStorage_Retired = "1.2.840.10008.5.1.4.1.1.129";
const kEnhancedPETImageStorage = "1.2.840.10008.5.1.4.1.1.130";
const kBasicStructuredDisplayStorage = "1.2.840.10008.5.1.4.1.1.131";
const kRTImageStorage = "1.2.840.10008.5.1.4.1.1.481.1";
const kRTDoseStorage = "1.2.840.10008.5.1.4.1.1.481.2";
const kRTStructureSetStorage = "1.2.840.10008.5.1.4.1.1.481.3";
const kRTBeamsTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.4";
const kRTPlanStorage = "1.2.840.10008.5.1.4.1.1.481.5";
const kRTBrachyTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.6";
const kRTTreatmentSummaryRecordStorage = "1.2.840.10008.5.1.4.1.1.481.7";
const kRTIonPlanStorage = "1.2.840.10008.5.1.4.1.1.481.8";
const kRTIonBeamsTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.9";
const kDICOSCTImageStorage = "1.2.840.10008.5.1.4.1.1.501.1";
const kDICOSDigitalX_RayImageStorage_ForPresentation = "1.2.840.10008.5.1.4.1.1.501.2.1";
const kDICOSDigitalX_RayImageStorage_ForProcessing = "1.2.840.10008.5.1.4.1.1.501.2.2";
const kDICOSThreatDetectionReportStorage = "1.2.840.10008.5.1.4.1.1.501.3";
const kDICOS2DAITStorage = "1.2.840.10008.5.1.4.1.1.501.4";
const kDICOS3DAITStorage = "1.2.840.10008.5.1.4.1.1.501.5";
const kDICOSQuadrupoleResonanceStorage = "1.2.840.10008.5.1.4.1.1.501.6";
const kEddyCurrentImageStorage = "1.2.840.10008.5.1.4.1.1.601.1";
const kEddyCurrentMulti_frameImageStorage = "1.2.840.10008.5.1.4.1.1.601.2";
const kPatientRootQuery_RetrieveInformationModel_FIND = "1.2.840.10008.5.1.4.1.2.1.1";
const kPatientRootQuery_RetrieveInformationModel_MOVE = "1.2.840.10008.5.1.4.1.2.1.2";
const kPatientRootQuery_RetrieveInformationModel_GET = "1.2.840.10008.5.1.4.1.2.1.3";
const kStudyRootQuery_RetrieveInformationModel_FIND = "1.2.840.10008.5.1.4.1.2.2.1";
const kStudyRootQuery_RetrieveInformationModel_MOVE = "1.2.840.10008.5.1.4.1.2.2.2";
const kStudyRootQuery_RetrieveInformationModel_GET = "1.2.840.10008.5.1.4.1.2.2.3";
const kPatient_StudyOnlyQuery_RetrieveInformationModel_FIND_Retired = "1.2.840.10008.5.1.4.1.2.3.1";
const kPatient_StudyOnlyQuery_RetrieveInformationModel_MOVE_Retired = "1.2.840.10008.5.1.4.1.2.3.2";
const kPatient_StudyOnlyQuery_RetrieveInformationModel_GET_Retired = "1.2.840.10008.5.1.4.1.2.3.3";
const kCompositeInstanceRootRetrieve_MOVE = "1.2.840.10008.5.1.4.1.2.4.2";
const kCompositeInstanceRootRetrieve_GET = "1.2.840.10008.5.1.4.1.2.4.3";
const kCompositeInstanceRetrieveWithoutBulkData_GET = "1.2.840.10008.5.1.4.1.2.5.3";
const kModalityWorklistInformationModel_FIND = "1.2.840.10008.5.1.4.31";
const kGeneralPurposeWorklistInformationModel_FIND_Retired = "1.2.840.10008.5.1.4.32.1";
const kGeneralPurposeScheduledProcedureStepSOPClass_Retired = "1.2.840.10008.5.1.4.32.2";
const kGeneralPurposePerformedProcedureStepSOPClass_Retired = "1.2.840.10008.5.1.4.32.3";
const kGeneralPurposeWorklistManagementMetaSOPClass_Retired = "1.2.840.10008.5.1.4.32";
const kInstanceAvailabilityNotificationSOPClass = "1.2.840.10008.5.1.4.33";
const kRTBeamsDeliveryInstructionStorage_Trial_Retired = "1.2.840.10008.5.1.4.34.1";
const kRTConventionalMachineVerification_Trial_Retired = "1.2.840.10008.5.1.4.34.2";
const kRTIonMachineVerification_Trial_Retired = "1.2.840.10008.5.1.4.34.3";
const kUnifiedWorklistandProcedureStepServiceClass_Trial_Retired = "1.2.840.10008.5.1.4.34.4";
const kUnifiedProcedureStep_PushSOPClass_Trial_Retired = "1.2.840.10008.5.1.4.34.4.1";
const kUnifiedProcedureStep_WatchSOPClass_Trial_Retired = "1.2.840.10008.5.1.4.34.4.2";
const kUnifiedProcedureStep_PullSOPClass_Trial_Retired = "1.2.840.10008.5.1.4.34.4.3";
const kUnifiedProcedureStep_EventSOPClass_Trial_Retired = "1.2.840.10008.5.1.4.34.4.4";
const kUnifiedWorklistandProcedureStepSOPInstance = "1.2.840.10008.5.1.4.34.5";
const kUnifiedWorklistandProcedureStepServiceClass = "1.2.840.10008.5.1.4.34.6";
const kUnifiedProcedureStep_PushSOPClass = "1.2.840.10008.5.1.4.34.6.1";
const kUnifiedProcedureStep_WatchSOPClass = "1.2.840.10008.5.1.4.34.6.2";
const kUnifiedProcedureStep_PullSOPClass = "1.2.840.10008.5.1.4.34.6.3";
const kUnifiedProcedureStep_EventSOPClass = "1.2.840.10008.5.1.4.34.6.4";
const kRTBeamsDeliveryInstructionStorage = "1.2.840.10008.5.1.4.34.7";
const kRTConventionalMachineVerification = "1.2.840.10008.5.1.4.34.8";
const kRTIonMachineVerification = "1.2.840.10008.5.1.4.34.9";
const kGeneralRelevantPatientInformationQuery = "1.2.840.10008.5.1.4.37.1";
const kBreastImagingRelevantPatientInformationQuery = "1.2.840.10008.5.1.4.37.2";
const kCardiacRelevantPatientInformationQuery = "1.2.840.10008.5.1.4.37.3";
const kHangingProtocolStorage = "1.2.840.10008.5.1.4.38.1";
const kHangingProtocolInformationModel_FIND = "1.2.840.10008.5.1.4.38.2";
const kHangingProtocolInformationModel_MOVE = "1.2.840.10008.5.1.4.38.3";
const kHangingProtocolInformationModel_GET = "1.2.840.10008.5.1.4.38.4";
const kColorPaletteStorage = "1.2.840.10008.5.1.4.39.1";
const kColorPaletteInformationModel_FIND = "1.2.840.10008.5.1.4.39.2";
const kColorPaletteInformationModel_MOVE = "1.2.840.10008.5.1.4.39.3";
const kColorPaletteInformationModel_GET = "1.2.840.10008.5.1.4.39.4";
const kProductCharacteristicsQuerySOPClass = "1.2.840.10008.5.1.4.41";
const kSubstanceApprovalQuerySOPClass = "1.2.840.10008.5.1.4.42";
const kGenericImplantTemplateStorage = "1.2.840.10008.5.1.4.43.1";
const kGenericImplantTemplateInformationModel_FIND = "1.2.840.10008.5.1.4.43.2";
const kGenericImplantTemplateInformationModel_MOVE = "1.2.840.10008.5.1.4.43.3";
const kGenericImplantTemplateInformationModel_GET = "1.2.840.10008.5.1.4.43.4";
const kImplantAssemblyTemplateStorage = "1.2.840.10008.5.1.4.44.1";
const kImplantAssemblyTemplateInformationModel_FIND = "1.2.840.10008.5.1.4.44.2";
const kImplantAssemblyTemplateInformationModel_MOVE = "1.2.840.10008.5.1.4.44.3";
const kImplantAssemblyTemplateInformationModel_GET = "1.2.840.10008.5.1.4.44.4";
const kImplantTemplateGroupStorage = "1.2.840.10008.5.1.4.45.1";
const kImplantTemplateGroupInformationModel_FIND = "1.2.840.10008.5.1.4.45.2";
const kImplantTemplateGroupInformationModel_MOVE = "1.2.840.10008.5.1.4.45.3";
const kImplantTemplateGroupInformationModel_GET = "1.2.840.10008.5.1.4.45.4";
const kNativeDICOMModel = "1.2.840.10008.7.1.1";
const kAbstractMulti_DimensionalImageModel = "1.2.840.10008.7.1.2";
const kdicomDeviceName = "1.2.840.10008.15.0.3.1";
const kdicomDescription = "1.2.840.10008.15.0.3.2";
const kdicomManufacturer = "1.2.840.10008.15.0.3.3";
const kdicomManufacturerModelName = "1.2.840.10008.15.0.3.4";
const kdicomSoftwareVersion = "1.2.840.10008.15.0.3.5";
const kdicomVendorData = "1.2.840.10008.15.0.3.6";
const kdicomAETitle = "1.2.840.10008.15.0.3.7";
const kdicomNetworkConnectionReference = "1.2.840.10008.15.0.3.8";
const kdicomApplicationCluster = "1.2.840.10008.15.0.3.9";
const kdicomAssociationInitiator = "1.2.840.10008.15.0.3.10";
const kdicomAssociationAcceptor = "1.2.840.10008.15.0.3.11";
const kdicomHostname = "1.2.840.10008.15.0.3.12";
const kdicomPort = "1.2.840.10008.15.0.3.13";
const kdicomSOPClass = "1.2.840.10008.15.0.3.14";
const kdicomTransferRole = "1.2.840.10008.15.0.3.15";
const kdicomTransferSyntax = "1.2.840.10008.15.0.3.16";
const kdicomPrimaryDeviceType = "1.2.840.10008.15.0.3.17";
const kdicomRelatedDeviceReference = "1.2.840.10008.15.0.3.18";
const kdicomPreferredCalledAETitle = "1.2.840.10008.15.0.3.19";
const kdicomTLSCyphersuite = "1.2.840.10008.15.0.3.20";
const kdicomAuthorizedNodeCertificateReference = "1.2.840.10008.15.0.3.21";
const kdicomThisNodeCertificateReference = "1.2.840.10008.15.0.3.22";
const kdicomInstalled = "1.2.840.10008.15.0.3.23";
const kdicomStationName = "1.2.840.10008.15.0.3.24";
const kdicomDeviceSerialNumber = "1.2.840.10008.15.0.3.25";
const kdicomInstitutionName = "1.2.840.10008.15.0.3.26";
const kdicomInstitutionAddress = "1.2.840.10008.15.0.3.27";
const kdicomInstitutionDepartmentName = "1.2.840.10008.15.0.3.28";
const kdicomIssuerOfPatientID = "1.2.840.10008.15.0.3.29";
const kdicomPreferredCallingAETitle = "1.2.840.10008.15.0.3.30";
const kdicomSupportedCharacterSet = "1.2.840.10008.15.0.3.31";
const kdicomConfigurationRoot = "1.2.840.10008.15.0.4.1";
const kdicomDevicesRoot = "1.2.840.10008.15.0.4.2";
const kdicomUniqueAETitlesRegistryRoot = "1.2.840.10008.15.0.4.3";
const kdicomDevice = "1.2.840.10008.15.0.4.4";
const kdicomNetworkAE = "1.2.840.10008.15.0.4.5";
const kdicomNetworkConnection = "1.2.840.10008.15.0.4.6";
const kdicomUniqueAETitle = "1.2.840.10008.15.0.4.7";
const kdicomTransferCapability = "1.2.840.10008.15.0.4.8";
const kUniversalCoordinatedTime = "1.2.840.10008.15.1.1";