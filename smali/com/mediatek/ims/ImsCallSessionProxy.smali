.class public Lcom/mediatek/ims/ImsCallSessionProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;,
        Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallLogLevel;,
        Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallProfileEx;,
        Lcom/mediatek/ims/ImsCallSessionProxy$User;
    }
.end annotation


# static fields
.field private static final AMR_NB:I = 0x6

.field private static final AMR_WB:I = 0x7

.field private static final BITRATE_TABLE:[F

.field private static final CACHED_TERMINATE_REASON_DELAY:I = 0x64

.field public static final CALL_INFO_MSG_TYPE_ACTIVE:I = 0x84

.field public static final CALL_INFO_MSG_TYPE_ALERT:I = 0x2

.field public static final CALL_INFO_MSG_TYPE_CONNECTED:I = 0x6

.field public static final CALL_INFO_MSG_TYPE_DISCONNECTED:I = 0x85

.field public static final CALL_INFO_MSG_TYPE_HELD:I = 0x83

.field public static final CALL_INFO_MSG_TYPE_MO_CALL_ID_ASSIGN:I = 0x82

.field public static final CALL_INFO_MSG_TYPE_REMOTE_HOLD:I = 0x87

.field public static final CALL_INFO_MSG_TYPE_REMOTE_RESUME:I = 0x88

.field public static final CALL_INFO_MSG_TYPE_SETUP:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_ACCEPT_RESULT:I = 0xca

.field private static final EVENT_ADD_CONFERENCE_RESULT:I = 0xce

.field private static final EVENT_CACHED_TERMINATE_REASON:I = 0xe6

.field private static final EVENT_CALL_ADDITIONAL_INFO:I = 0xe5

.field private static final EVENT_CALL_INFO_INDICATION:I = 0x66

.field private static final EVENT_CALL_MODE_CHANGE_INDICATION:I = 0x6a

.field private static final EVENT_CALL_RAT_INDICATION:I = 0xe4

.field private static final EVENT_CANCEL_USSI_COMPLETE:I = 0xd6

.field private static final EVENT_DIAL_CONFERENCE_RESULT:I = 0xd1

.field private static final EVENT_DIAL_RESULT:I = 0xc9

.field private static final EVENT_DTMF_DONE:I = 0xd4

.field private static final EVENT_ECONF_RESULT_INDICATION:I = 0x68

.field private static final EVENT_ECT_RESULT:I = 0xd7

.field private static final EVENT_ECT_RESULT_INDICATION:I = 0x6d

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x69

.field private static final EVENT_HOLD_RESULT:I = 0xcb

.field private static final EVENT_IMS_CONFERENCE_INDICATION:I = 0x6f

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0xea

.field private static final EVENT_MERGE_RESULT:I = 0xcd

.field private static final EVENT_ON_SUPP_SERVICE_NOTIFICATION:I = 0xe2

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x65

.field private static final EVENT_PULL_CALL_RESULT:I = 0xd8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd9

.field private static final EVENT_REDIAL_ECC_INDICATION:I = 0xe0

.field private static final EVENT_REMOVE_CONFERENCE_RESULT:I = 0xcf

.field private static final EVENT_RESUME_RESULT:I = 0xcc

.field private static final EVENT_RETRIEVE_MERGE_FAIL_RESULT:I = 0xd3

.field private static final EVENT_RTT_AUDIO_INDICATION:I = 0xe1

.field private static final EVENT_RTT_CAPABILITY_INDICATION:I = 0x6e

.field private static final EVENT_RTT_MODIFY_REQUEST_RECEIVE:I = 0xdc

.field private static final EVENT_RTT_MODIFY_RESPONSE:I = 0xdb

.field private static final EVENT_RTT_TEXT_RECEIVE_INDICATION:I = 0xda

.field private static final EVENT_SEND_USSI_COMPLETE:I = 0xd5

.field private static final EVENT_SIP_CODE_INDICATION:I = 0xd0

.field private static final EVENT_SIP_HEADER_INFO:I = 0xe3

.field private static final EVENT_SPEECH_CODEC_INFO:I = 0xdf

.field protected static final EVENT_SRVCC_STATE_IND:I = 0xeb

.field private static final EVENT_SWAP_BEFORE_MERGE_RESULT:I = 0xd2

.field private static final EVENT_VIDEO_CAPABILITY_INDICATION:I = 0x6b

.field private static final EVENT_VIDEO_RINGTONE_CACHED_INFO:I = 0xe9

.field private static final EVENT_VIDEO_RINGTONE_INFO:I = 0xe8

.field private static final EVENT_VIDEO_RINGTONE_REQUEST_RESULT:I = 0xe7

.field private static final EVRC:I = 0x2

.field private static final EVRC_B:I = 0x3

.field private static final EVRC_NW:I = 0x5

.field private static final EVRC_WB:I = 0x4

.field private static final EVS_AWB:I = 0x21

.field private static final EVS_FB:I = 0x20

.field private static final EVS_FB_WITH_BITRATE:I = 0xb0

.field private static final EVS_NB:I = 0x17

.field private static final EVS_NB_WITH_BITRATE:I = 0x80

.field private static final EVS_SW:I = 0x19

.field private static final EVS_SW_WITH_BITRATE:I = 0xa0

.field private static final EVS_WB:I = 0x18

.field private static final EVS_WB_WITH_BITRATE:I = 0x90

.field public static final EXTRA_CALL_INFO_MESSAGE_TYPE:Ljava/lang/String; = "mediatek:callInfoMessageType"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "mediatek:callType"

.field public static final EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "mediatek:emergencyCall"

.field public static final EXTRA_INCOMING_CALL:Ljava/lang/String; = "mediatek:incomingCall"

.field public static final EXTRA_RAT_TYPE:Ljava/lang/String; = "mediatek:ratType"

.field public static final EXTRA_WAS_VIDEO_CALL:Ljava/lang/String; = "mediatek:wasVideoCall"

.field private static final GET_CACHED_VIDEO_RINGTONE_INFO:I = 0x64

.field private static final GSM_EFR:I = 0x8

.field private static final GSM_FR:I = 0x9

.field private static final GSM_HR:I = 0xa

.field private static final HANGUP_CAUSE_FORWARD:I = 0x3

.field private static final HANGUP_CAUSE_LOW_BATTERY:I = 0x2

.field private static final HANGUP_CAUSE_NONE:I = 0x0

.field private static final HANGUP_CAUSE_NO_COVERAGE:I = 0x1

.field private static final HANGUP_CAUSE_SPECIAL_HANGUP:I = 0x4

.field private static final HEADER_CALL_ID:I = 0xd

.field private static HEX:Ljava/lang/String; = null

.field private static final IMPORTANT_STRING:Ljava/lang/String; = "important"

.field private static final IMS_CALL_MODE_CLIENT_API:I = 0x2

.field private static final IMS_CALL_MODE_NORMAL:I = 0x1

.field private static final IMS_CALL_TYPE_LTE:I = 0x1

.field private static final IMS_CALL_TYPE_NR:I = 0x3

.field private static final IMS_CALL_TYPE_UNKNOWN:I = 0x0

.field private static final IMS_CALL_TYPE_WIFI:I = 0x2

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_ID:Ljava/lang/String; = "65535"

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionProxy"

.field private static final MAX_WRONG_ECPI_COUNT:I = 0x5

.field private static final MT_CALL_ENRICHED_CALL:I = 0x66

.field private static final MT_CALL_IMS_GWSD:I = 0x65

.field private static final MT_CALL_IMS_VONR:I = 0x67

.field private static final NA_PRIOR_CLIR_PREFIX:Ljava/lang/String; = "*82"

.field private static final NORMAL_STRING:Ljava/lang/String; = "normal"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final QCELP13K:I = 0x1

.field private static final REMOTE_STATE_HOLD:I = 0x1

.field private static final REMOTE_STATE_NONE:I = 0x0

.field private static final REMOTE_STATE_RESUME:I = 0x2

.field private static final RTT_AUDIO_SPEECH:I = 0x0

.field private static final SENLOG:Z

.field private static final SIP_INVITE_HEADER_CALL_INFO:Ljava/lang/String; = "Call-Info"

.field private static final SIP_INVITE_HEADER_ORGANIZATION:Ljava/lang/String; = "Organization"

.field private static final SIP_INVITE_HEADER_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final SIP_INVITE_HEADER_SUBJECT:Ljava/lang/String; = "Subject"

.field private static final STANDARD_STRING:Ljava/lang/String; = "standard"

.field public static final SUB_TYPE_HEADER:I = 0x1

.field public static final SUB_TYPE_LOCATION:I = 0x2

.field private static final TAG_DOUBLE_QUOTE:Ljava/lang/String; = "<ascii_34>"

.field private static final TELDBG:Z

.field private static final URGENT_STRING:Ljava/lang/String; = "urgent"

.field private static final USSI_REQUEST:I = 0x1

.field private static final USSI_RESPONSE:I = 0x2

.field private static final VDBG:Z = false

.field private static final VIDEO_RINGTONE_BUTTON_SHOW_EVENT:I = 0x64

.field private static final VIDEO_RINGTONE_CLICK_BUTTON_EVENT:I = 0x1

.field private static final VIDEO_RINGTONE_CLICK_COORDINATOR_EVENT:I = 0x2

.field private static final VIDEO_STATE_PAUSE:I = 0x0

.field private static final VIDEO_STATE_RECV_ONLY:I = 0x2

.field private static final VIDEO_STATE_SEND_ONLY:I = 0x1

.field private static final VIDEO_STATE_SEND_RECV:I = 0x3

.field private static final VT_PROVIDER_ID:Ljava/lang/String; = "video_provider_id"

.field private static final WFC_GET_CAUSE_FAILED:I = -0x1


# instance fields
.field private mActiveParticipantsNum:I

.field private mBadRssiThreshould:I

.field private mCachedCauseText:Ljava/lang/String;

.field private mCachedSuppServiceInfo:Landroid/os/AsyncResult;

.field private mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mCachedUserInfo:Landroid/os/AsyncResult;

.field private mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

.field private mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallRat:I

.field private mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

.field private mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mContext:Landroid/content/Context;

.field private mDtmfMsg:Landroid/os/Message;

.field private mDtmfTarget:Landroid/os/Messenger;

.field private mEconfCount:I

.field private mEctMsg:Landroid/os/Message;

.field private mEctTarget:Landroid/os/Messenger;

.field private mEnableSendRttBom:Z

.field private mFwkPause:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHangupCount:I

.field private mHangupHostDuringMerge:Z

.field private mHasPendingDisconnect:Z

.field private mHasPendingMo:Z

.field private mHasTriedSelfActivation:Z

.field private mHeaderCallId:Ljava/lang/String;

.field private mHeaderData:Ljava/lang/String;

.field private mImsCallMode:I

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mIsAddRemoveParticipantsCommandOK:Z

.field private mIsConferenceHost:Z

.field private mIsEmergencyCall:Z

.field private mIsHideHoldDuringECT:Z

.field private mIsHideHoldEventDuringMerging:Z

.field private mIsIncomingCall:Z

.field private mIsIncomingForRtt:Z

.field private mIsMerging:Z

.field private mIsNeedCacheTerminationEarly:Z

.field private mIsOnTerminated:Z

.field private mIsOneKeyConf:Z

.field private mIsRetrievingMergeFail:Z

.field private mIsRingingRedirect:Z

.field private mIsRttEnabledForCallSession:Z

.field private mIsWaitingClose:Z

.field private mLastSIPReasonHeader:Ljava/lang/String;

.field private mLastSipCode:I

.field private mLastSipMethod:I

.field private mListener:Landroid/telephony/ims/ImsCallSessionListener;

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mLocalTerminateReason:I

.field private mLock:Ljava/lang/Object;

.field private mMTSetup:Z

.field private mMergeCallId:Ljava/lang/String;

.field private mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMerged:Z

.field private mMergedCallId:Ljava/lang/String;

.field private mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field public mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mNeedHideResumeEventDuringMerging:Z

.field private mNormalCallsMerge:Z

.field private mOneKeyparticipants:[Ljava/lang/String;

.field private mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

.field private mOverallPause:Z

.field private mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisconnectReason:I

.field private mPendingParticipantInfo:[Ljava/lang/String;

.field private mPendingParticipantInfoIndex:I

.field private mPendingParticipantStatistics:I

.field private mPhoneId:I

.field private mPreLocalVideoCapability:I

.field private mPreRemoteVideoCapability:I

.field private mRadioUnavailable:Z

.field private mRatType:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteState:I

.field private mRetryRemoveUri:Ljava/lang/String;

.field private mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

.field protected mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

.field private final mServiceHandler:Landroid/os/Handler;

.field private mShouldUpdateAddressByEcpi:Z

.field private mShouldUpdateAddressByPau:Z

.field private mShouldUpdateAddressBySipField:Z

.field private mShouldUpdateDisplayNameByPau:Z

.field private mSipSessionProgress:Z

.field private mState:I

.field private mThreeWayMergeSucceeded:Z

.field private mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

.field private mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field private mVideoState:I

.field private mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

.field mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

.field private mWrongEcpiCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveParticipantsNum(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBadRssiThreshould(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedCauseText(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallId(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallNumber(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallProfile(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallRat(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDtmfMsg(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDtmfTarget(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEconfCount(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEctMsg(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEctTarget(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHangupHostDuringMerge(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPendingDisconnect(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPendingMo(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsRILAdapter(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsReasonInfo(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsServiceCT(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAddRemoveParticipantsCommandOK(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConferenceHost(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHideHoldDuringECT(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHideHoldEventDuringMerging(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIncomingForRtt(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMerging(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNeedCacheTerminationEarly(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOnTerminated(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOneKeyConf(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRetrievingMergeFail(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRingingRedirect(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRttEnabledForCallSession(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWaitingClose(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalCallProfile(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalTerminateReason(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMergeCallId(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMerged(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMergedCallId(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtkConfSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedHideResumeEventDuringMerging(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNormalCallsMerge(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOneKeyparticipants(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpImsCallSession(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipantsList(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingDisconnectReason(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingParticipantInfo(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingParticipantInfoIndex(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingParticipantStatistics(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteCallProfile(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryRemoveUri(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttTextEncoder(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/RttTextEncoder;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldUpdateAddressByEcpi(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldUpdateAddressByPau(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldUpdateAddressBySipField(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldUpdateDisplayNameByPau(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreeWayMergeSucceeded(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVTProvider(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVTProviderUtil(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoState(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfoService(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWrongEcpiCount(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveParticipantsNum(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCachedCauseText(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCachedSuppServiceInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCachedUserInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallErrorState(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallId(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallNumber(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDtmfMsg(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEconfCount(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEctMsg(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEctTarget(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnableSendRttBom(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFwkPause(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHangupHostDuringMerge(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasPendingDisconnect(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasPendingMo(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImsReasonInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAddRemoveParticipantsCommandOK(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConferenceHost(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsHideHoldDuringECT(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIncomingForRtt(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRetrievingMergeFail(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRttEnabledForCallSession(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMTSetup(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMerged(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedHideResumeEventDuringMerging(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNormalCallsMerge(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOneKeyparticipants(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParticipants(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingParticipantInfoIndex(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreLocalVideoCapability(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreRemoteVideoCapability(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRadioUnavailable(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryRemoveUri(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSipSessionProgress(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThreeWayMergeSucceeded(Lcom/mediatek/ims/ImsCallSessionProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoState(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWrongEcpiCount(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndSendRttBom(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->checkAndSendRttBom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcorrectRemoteVideoCapabilityForVideoConference(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->correctRemoteVideoCapabilityForVideoConference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcorrectVideoCapabilityForCallState(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->correctVideoCapabilityForCallState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateConferenceSession(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetailLog(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mevent2String(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->event2String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOpImsReasonInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getOpImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRadioTechFromRatType(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getRadioTechFromRatType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiRssi(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getWifiRssi()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleCachedTerminateReason(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCachedTerminateReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallAdditionalInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCallAdditionalInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallRatIndication(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCallRatIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsRegistrationInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleImsRegistrationInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRedialEccIndication(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleRedialEccIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSipHeaderInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSipHeaderInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSpeechCodecInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSpeechCodecInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSrvccStateIndication(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSrvccStateIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVideoRingtoneInfo(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleVideoRingtoneInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAllowRttVideoSwitch(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isAllowRttVideoSwitch()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAnsweredElsewhere(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isAnsweredElsewhere(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRemoteCallDecline(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRemoteCallDecline(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUserPerfromedHangup(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVideoCall(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogEventResult(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logEventResult(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogWithCallId(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeCompleted(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeFailed(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCachedVideoRingtoneButtonInfo(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCachedVideoRingtoneButtonInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCallSessionTerminated(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCallSessionUpdated(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyNotificationRingtone(Lcom/mediatek/ims/ImsCallSessionProxy;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyNotificationRingtone(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRemoteHeld(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteHeld()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRemoteResumed(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteResumed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessMtRttWithoutPrecondition(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->processMtRttWithoutPrecondition(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRemoteCallVideoCapability(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeRemoteCallVideoCapability()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCallEventWithRat(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendCallEventWithRat(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensitiveEncode(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshouldNotifyCallDropByBadWifiQuality(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->shouldNotifyCallDropByBadWifiQuality()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mterminateConferenceSession(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleRttAudioIndication(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->toggleRttAudioIndication()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCallStateForWifiOffload(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCallType(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallType(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIncomingVideoRingtone(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateIncomingVideoRingtone(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIsIbt(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateIsIbt([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateOutgoingVideoRingtone(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateOutgoingVideoRingtone(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRat(Lcom/mediatek/ims/ImsCallSessionProxy;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateVideoDirection(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateVideoDirection()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 151
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->SENLOG:Z

    .line 152
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    .line 460
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy;->BITRATE_TABLE:[F

    .line 1421
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x40bccccd    # 5.9f
        0x40e66666    # 7.2f
        0x41000000    # 8.0f
        0x4119999a    # 9.6f
        0x41533333    # 13.2f
        0x41833333    # 16.4f
        0x41c33333    # 24.4f
        0x42000000    # 32.0f
        0x42400000    # 48.0f
        0x42800000    # 64.0f
        0x42c00000    # 96.0f
        0x43000000    # 128.0f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 721
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 722
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 572
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move-object/from16 v9, p7

    move/from16 v7, p8

    invoke-direct {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 164
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 167
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 168
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 169
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    .line 170
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    .line 173
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    .line 175
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 176
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 177
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    .line 178
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 179
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 180
    const-string v2, ""

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 181
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 182
    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 183
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 185
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 187
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    .line 188
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    .line 190
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    .line 193
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    .line 194
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    .line 197
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    .line 199
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 204
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 205
    const/4 v3, -0x1

    iput v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    .line 210
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 224
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 227
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 229
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 231
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 237
    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 239
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 240
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 246
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 249
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 250
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 252
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 253
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 254
    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    .line 255
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    .line 256
    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    .line 260
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    .line 262
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 264
    const/16 v4, -0x5a

    iput v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    .line 266
    const/4 v11, 0x3

    iput v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    .line 273
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    .line 274
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    .line 281
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 283
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    .line 287
    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 288
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 289
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    .line 292
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    .line 295
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    .line 298
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 300
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 301
    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    .line 303
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 304
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    .line 307
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    .line 310
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    .line 311
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 315
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 330
    iput v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I

    .line 344
    iput v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsCallMode:I

    .line 345
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    .line 490
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    .line 525
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    .line 556
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-direct {v2, v1, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy-IA;)V

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    .line 574
    iput v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 575
    iget v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 576
    move-object/from16 v3, p5

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    .line 577
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 578
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 579
    iput-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 580
    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    iget v12, v8, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v13, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v4, v12, v13}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 581
    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    iget v12, v8, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v13, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v4, v12, v13}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 582
    iget v4, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    .line 583
    iget v4, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    .line 585
    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v4, v12}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    const-string v4, "ImsCallSessionProxy"

    const-string v12, "VzW: set default as no HD icon"

    invoke-static {v4, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v11, v4, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 591
    :cond_0
    move-object/from16 v12, p3

    iput-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 592
    iput-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 593
    iput-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 594
    iput-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 595
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 596
    iput-boolean v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 598
    invoke-direct {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isEnrichedCallingSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-direct {v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->setImsPreCallInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 604
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ImsCallSessionProxy() : RILAdapter:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "imsService:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " callID:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " phoneId: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    invoke-direct {v1, v4, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 608
    new-instance v4, Lcom/mediatek/ims/RttTextEncoder;

    invoke-direct {v4}, Lcom/mediatek/ims/RttTextEncoder;-><init>()V

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    .line 610
    nop

    .line 611
    invoke-static {v2}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v14

    .line 612
    .local v14, "opImsServiceCustomizationFactory":Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;
    invoke-virtual {v14}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeOpImsCallSessionProxy()Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 614
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x66

    invoke-interface {v4, v15, v11, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 616
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x68

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 617
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xd0

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 618
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x6a

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 620
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x6b

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 622
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x6d

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 623
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x6f

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xd9

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xdf

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 627
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xe0

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xe3

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSipHeaderInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 629
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xe4

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallRatIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xe5

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xea

    invoke-interface {v4, v11, v15, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 634
    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 638
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 640
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xdc

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 642
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xda

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xdb

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe1

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttAudioIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 645
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe8

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVideoRingtoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 646
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xeb

    invoke-interface {v2, v3, v4, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSrvccStateInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    const-string v2, "persist.vendor.vilte_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    const-string v2, "ImsCallSessionProxy() : start new VTProvider"

    invoke-direct {v1, v2, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 651
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 653
    invoke-virtual {v14}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 654
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;IIZ)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {v14}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 659
    :goto_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 661
    const-string v0, "ImsCallSessionProxy() : end new VTProvider"

    invoke-direct {v1, v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 664
    :cond_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe2

    invoke-interface {v0, v2, v3, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 668
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 669
    .local v0, "b":Landroid/os/IBinder;
    const/4 v2, 0x5

    if-eqz v0, :cond_4

    .line 670
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    move-object v3, v0

    goto :goto_2

    .line 672
    :cond_4
    const-string v3, "mwis"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 674
    .end local v0    # "b":Landroid/os/IBinder;
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_6

    .line 675
    :try_start_0
    invoke-static {v3}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v0

    .line 676
    .local v0, "iMwiService":Lcom/mediatek/wfo/IMwiService;
    if-eqz v0, :cond_5

    .line 677
    invoke-interface {v0}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 679
    .end local v0    # "iMwiService":Lcom/mediatek/wfo/IMwiService;
    :cond_5
    goto :goto_1

    .line 680
    :cond_6
    const-string v0, "ImsCallSessionProxy() : No MwiService exist"

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_1
    goto :goto_2

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsCallSessionProxy() : can\'t get MwiService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 686
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_9

    .line 688
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-nez v0, :cond_7

    .line 689
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-direct {v0, v1, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy-IA;)V

    iput-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    .line 691
    :cond_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-interface {v0, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 694
    if-eqz v9, :cond_8

    .line 695
    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 699
    :cond_8
    goto :goto_3

    .line 697
    :catch_1
    move-exception v0

    .line 698
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "ImsCallSessionProxy() : RemoteException ImsCallSessionProxy()"

    invoke-direct {v1, v4, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 703
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_3
    iget v0, v8, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-eq v0, v13, :cond_a

    .line 704
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsService;->getImsPdnStatus(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    .line 707
    :cond_a
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 708
    iput-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 709
    invoke-direct {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUseSipField()V

    .line 715
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;ILcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I
    .param p9, "mtkImsCallSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 565
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 566
    move v0, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "context":Landroid/content/Context;
    .local v0, "phoneId":I
    .local p2, "context":Landroid/content/Context;
    .local p3, "profile":Landroid/telephony/ims/ImsCallProfile;
    .local p4, "listener":Landroid/telephony/ims/ImsCallSessionListener;
    .local p5, "imsService":Lcom/mediatek/ims/ImsService;
    .local p6, "handler":Landroid/os/Handler;
    .local p7, "imsRILAdapter":Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .local p8, "callId":Ljava/lang/String;
    iput-object p9, p1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 567
    return-void
.end method

.method private checkAndSendRttBom()V
    .locals 3

    .line 5366
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    .line 5367
    .local v0, "isRttSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSendRttBom() : isRttSuported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRttEnabledForCallSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableSendRttBom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5371
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 5373
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 5374
    .local v1, "bom":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttMessage(Ljava/lang/String;)V

    .line 5375
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 5377
    .end local v1    # "bom":[B
    :cond_0
    return-void

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method

.method private closeConferenceSession()V
    .locals 2

    .line 4648
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4649
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->close()V

    .line 4650
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    goto :goto_0

    .line 4651
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 4652
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4655
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4657
    :cond_1
    :goto_0
    return-void
.end method

.method private correctRemoteVideoCapabilityForVideoConference()V
    .locals 2

    .line 4735
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4736
    const-string v0, "correctRemoteVideoCapabilityForVideoConference() : Video conference, force set remote as Video Call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4737
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4739
    :cond_0
    return-void
.end method

.method private correctVideoCapabilityForCallState()Z
    .locals 8

    .line 4742
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 4744
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4745
    return v1

    .line 4747
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4748
    return v1

    .line 4751
    :cond_1
    const/4 v1, 0x0

    .line 4752
    .local v1, "isChanged":Z
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4753
    .local v2, "finalLocalCallType":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4756
    .local v3, "finalRemoteCallType":I
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    const/4 v6, 0x4

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    if-ne v4, v6, :cond_2

    .line 4758
    const/4 v2, 0x4

    goto :goto_0

    .line 4761
    :cond_2
    const/4 v2, 0x2

    .line 4765
    :goto_0
    iget-boolean v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    if-ne v4, v6, :cond_3

    .line 4767
    const/4 v3, 0x4

    goto :goto_1

    .line 4770
    :cond_3
    const/4 v3, 0x2

    .line 4773
    :goto_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v5, 0x2

    const-string v6, " to "

    if-eq v4, v2, :cond_4

    .line 4774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "correctVideoCapabilityByCallState() : local changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v7, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4778
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4779
    const/4 v1, 0x1

    .line 4782
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v4, v3, :cond_5

    .line 4783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "correctVideoCapabilityByCallState() : Remote changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v7, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4787
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4788
    const/4 v1, 0x1

    .line 4791
    :cond_5
    return v1
.end method

.method private createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 9
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4603
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local p2    # "callId":Ljava/lang/String;
    .local v2, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .local v7, "callId":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4607
    iget-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object p1

    .line 4608
    .local p1, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {p2, v0, p1, v7, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 4611
    :try_start_0
    iget-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4614
    goto :goto_0

    .line 4612
    :catch_0
    move-exception v0

    move-object p2, v0

    .line 4613
    .local p2, "e":Ljava/lang/RuntimeException;
    const-string v0, "RuntimeException callSessionMergeStarted()"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4615
    .end local p2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 2
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4573
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isStkCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4575
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    goto :goto_0

    .line 4578
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 4580
    :goto_0
    return-void
.end method

.method private createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 19
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4584
    move-object/from16 v0, p0

    new-instance v1, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4587
    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v11, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v15, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move-object/from16 v17, p2

    move-object/from16 v16, v1

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 4591
    .local v10, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1, v10}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 4592
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v10, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 4594
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4595
    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v1

    .line 4596
    .local v1, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v2, v3, v1, v8, v4}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 4598
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 4599
    return-void
.end method

.method private detailLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 4907
    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-nez v0, :cond_0

    .line 4908
    return-void

    .line 4910
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4911
    return-void
.end method

.method private event2String(I)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # I

    .line 5197
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 5198
    const-string v0, "EVENT_POLL_CALLS_RESULT"

    return-object v0

    .line 5199
    :cond_0
    const/16 v0, 0x66

    if-ne v0, p1, :cond_1

    .line 5200
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 5201
    :cond_1
    const/16 v0, 0x68

    if-ne v0, p1, :cond_2

    .line 5202
    const-string v0, "EVENT_ECONF_RESULT_INDICATION"

    return-object v0

    .line 5203
    :cond_2
    const/16 v0, 0x69

    if-ne v0, p1, :cond_3

    .line 5204
    const-string v0, "EVENT_GET_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 5205
    :cond_3
    const/16 v0, 0x6a

    if-ne v0, p1, :cond_4

    .line 5206
    const-string v0, "EVENT_CALL_MODE_CHANGE_INDICATION"

    return-object v0

    .line 5207
    :cond_4
    const/16 v0, 0x6b

    if-ne v0, p1, :cond_5

    .line 5208
    const-string v0, "EVENT_VIDEO_CAPABILITY_INDICATION"

    return-object v0

    .line 5209
    :cond_5
    const/16 v0, 0x6d

    if-ne v0, p1, :cond_6

    .line 5210
    const-string v0, "EVENT_ECT_RESULT_INDICATION"

    return-object v0

    .line 5211
    :cond_6
    const/16 v0, 0x6e

    if-ne v0, p1, :cond_7

    .line 5212
    const-string v0, "EVENT_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 5213
    :cond_7
    const/16 v0, 0x6f

    if-ne v0, p1, :cond_8

    .line 5214
    const-string v0, "EVENT_IMS_CONFERENCE_INDICATION"

    return-object v0

    .line 5215
    :cond_8
    const/16 v0, 0xc9

    if-ne v0, p1, :cond_9

    .line 5216
    const-string v0, "EVENT_DIAL_RESULT"

    return-object v0

    .line 5217
    :cond_9
    const/16 v0, 0xca

    if-ne v0, p1, :cond_a

    .line 5218
    const-string v0, "EVENT_ACCEPT_RESULT"

    return-object v0

    .line 5219
    :cond_a
    const/16 v0, 0xcb

    if-ne v0, p1, :cond_b

    .line 5220
    const-string v0, "EVENT_HOLD_RESULT"

    return-object v0

    .line 5221
    :cond_b
    const/16 v0, 0xcc

    if-ne v0, p1, :cond_c

    .line 5222
    const-string v0, "EVENT_RESUME_RESULT"

    return-object v0

    .line 5223
    :cond_c
    const/16 v0, 0xcd

    if-ne v0, p1, :cond_d

    .line 5224
    const-string v0, "EVENT_MERGE_RESULT"

    return-object v0

    .line 5225
    :cond_d
    const/16 v0, 0xce

    if-ne v0, p1, :cond_e

    .line 5226
    const-string v0, "EVENT_ADD_CONFERENCE_RESULT"

    return-object v0

    .line 5227
    :cond_e
    const/16 v0, 0xcf

    if-ne v0, p1, :cond_f

    .line 5228
    const-string v0, "EVENT_REMOVE_CONFERENCE_RESULT"

    return-object v0

    .line 5229
    :cond_f
    const/16 v0, 0xd0

    if-ne v0, p1, :cond_10

    .line 5230
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 5231
    :cond_10
    const/16 v0, 0xd1

    if-ne v0, p1, :cond_11

    .line 5232
    const-string v0, "EVENT_DIAL_CONFERENCE_RESULT"

    return-object v0

    .line 5233
    :cond_11
    const/16 v0, 0xd2

    if-ne v0, p1, :cond_12

    .line 5234
    const-string v0, "EVENT_SWAP_BEFORE_MERGE_RESULT"

    return-object v0

    .line 5235
    :cond_12
    const/16 v0, 0xd3

    if-ne v0, p1, :cond_13

    .line 5236
    const-string v0, "EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    return-object v0

    .line 5237
    :cond_13
    const/16 v0, 0xd4

    if-ne v0, p1, :cond_14

    .line 5238
    const-string v0, "EVENT_DTMF_DONE"

    return-object v0

    .line 5239
    :cond_14
    const/16 v0, 0xd5

    if-ne v0, p1, :cond_15

    .line 5240
    const-string v0, "EVENT_SEND_USSI_COMPLETE"

    return-object v0

    .line 5241
    :cond_15
    const/16 v0, 0xd6

    if-ne v0, p1, :cond_16

    .line 5242
    const-string v0, "EVENT_CANCEL_USSI_COMPLETE"

    return-object v0

    .line 5243
    :cond_16
    const/16 v0, 0xd7

    if-ne v0, p1, :cond_17

    .line 5244
    const-string v0, "EVENT_ECT_RESULT"

    return-object v0

    .line 5245
    :cond_17
    const/16 v0, 0xd8

    if-ne v0, p1, :cond_18

    .line 5246
    const-string v0, "EVENT_PULL_CALL_RESULT"

    return-object v0

    .line 5247
    :cond_18
    const/16 v0, 0xd9

    if-ne v0, p1, :cond_19

    .line 5248
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 5249
    :cond_19
    const/16 v0, 0xda

    if-ne v0, p1, :cond_1a

    .line 5250
    const-string v0, "EVENT_RTT_TEXT_RECEIVE_INDICATION"

    return-object v0

    .line 5251
    :cond_1a
    const/16 v0, 0xdb

    if-ne v0, p1, :cond_1b

    .line 5252
    const-string v0, "EVENT_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 5253
    :cond_1b
    const/16 v0, 0xdc

    if-ne v0, p1, :cond_1c

    .line 5254
    const-string v0, "EVENT_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 5255
    :cond_1c
    const/16 v0, 0xe1

    if-ne v0, p1, :cond_1d

    .line 5256
    const-string v0, "EVENT_RTT_AUDIO_INDICATION"

    return-object v0

    .line 5257
    :cond_1d
    const/16 v0, 0xdf

    if-ne v0, p1, :cond_1e

    .line 5258
    const-string v0, "EVENT_SPEECH_CODEC_INFO"

    return-object v0

    .line 5259
    :cond_1e
    const/16 v0, 0xe0

    if-ne v0, p1, :cond_1f

    .line 5260
    const-string v0, "EVENT_REDIAL_ECC_INDICATION"

    return-object v0

    .line 5261
    :cond_1f
    const/16 v0, 0xe2

    if-ne v0, p1, :cond_20

    .line 5262
    const-string v0, "EVENT_ON_SUPP_SERVICE_NOTIFICATION"

    return-object v0

    .line 5263
    :cond_20
    const/16 v0, 0xe3

    if-ne v0, p1, :cond_21

    .line 5264
    const-string v0, "EVENT_SIP_HEADER_INFO"

    return-object v0

    .line 5265
    :cond_21
    const/16 v0, 0xe4

    if-ne v0, p1, :cond_22

    .line 5266
    const-string v0, "EVENT_CALL_RAT_INDICATION"

    return-object v0

    .line 5267
    :cond_22
    const/16 v0, 0xe5

    if-ne v0, p1, :cond_23

    .line 5268
    const-string v0, "EVENT_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5269
    :cond_23
    const/16 v0, 0xea

    if-ne v0, p1, :cond_24

    .line 5270
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    .line 5271
    :cond_24
    const/16 v0, 0xe6

    if-ne v0, p1, :cond_25

    .line 5272
    const-string v0, "EVENT_CACHED_TERMINATE_REASON"

    return-object v0

    .line 5273
    :cond_25
    const/16 v0, 0xeb

    if-ne v0, p1, :cond_26

    .line 5274
    const-string v0, "EVENT_SRVCC_STATE_IND"

    return-object v0

    .line 5276
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 4884
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4885
    move-object v0, p1

    .local v0, "participantUri":Ljava/lang/String;
    goto :goto_0

    .line 4887
    .end local v0    # "participantUri":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4888
    .restart local v0    # "participantUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    .line 4891
    :goto_0
    return-object v0
.end method

.method private getDataNetworkType()I
    .locals 3

    .line 4239
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 4240
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 4241
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    return v1

    .line 4244
    :cond_0
    const-string v1, "getDataNetworkType error"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4245
    const/4 v1, 0x0

    return v1
.end method

.method private getHangupCause(I)I
    .locals 2
    .param p1, "reasionInfo"    # I

    .line 4942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHangupCause() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4944
    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    .line 4945
    const/4 v0, -0x1

    return v0

    .line 4946
    :cond_0
    const/16 v0, 0x2350

    if-ne p1, v0, :cond_1

    .line 4947
    const/4 v0, 0x1

    return v0

    .line 4948
    :cond_1
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 4949
    return v1

    .line 4950
    :cond_2
    const/16 v0, 0x2351

    if-ne p1, v0, :cond_3

    .line 4951
    const/4 v0, 0x3

    return v0

    .line 4952
    :cond_3
    const/16 v0, 0x2353

    if-ne p1, v0, :cond_4

    .line 4953
    const/4 v0, 0x4

    return v0

    .line 4955
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private getMaximumConferenceSize()I
    .locals 1

    .line 4691
    const/4 v0, 0x6

    return v0
.end method

.method private getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .locals 5

    .line 4249
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4250
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 4251
    .local v1, "ss":Landroid/telephony/ServiceState;
    const/4 v2, 0x0

    .line 4252
    .local v2, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 4253
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 4255
    return-object v2

    .line 4258
    :cond_0
    const-string v4, "getNetworkRegistrationInfo error"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4259
    return-object v2
.end method

.method private getOpImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 7
    .param p1, "sipMsg"    # Lcom/mediatek/ims/SipMessage;

    .line 5556
    const/4 v0, 0x0

    .line 5557
    .local v0, "info":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpImsReasonInfo sipCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonHeader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5558
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5557
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5559
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v1

    .line 5560
    .local v1, "sipErrCode":I
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v3

    .line 5561
    .local v3, "reasonHeader":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP112:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 5562
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 5563
    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 5975
    :sswitch_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5976
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234f

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5979
    :cond_0
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234f

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5982
    goto/16 :goto_0

    .line 5963
    :sswitch_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 5964
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234e

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5968
    :cond_1
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234e

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5972
    goto/16 :goto_0

    .line 5953
    :sswitch_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 5954
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234d

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5957
    :cond_2
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234d

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5960
    goto/16 :goto_0

    .line 5943
    :sswitch_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 5944
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234c

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5947
    :cond_3
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234c

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5950
    goto/16 :goto_0

    .line 5933
    :sswitch_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 5934
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234b

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5937
    :cond_4
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234b

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5940
    goto/16 :goto_0

    .line 5922
    :sswitch_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 5923
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234a

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5926
    :cond_5
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234a

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5930
    goto/16 :goto_0

    .line 5912
    :sswitch_6
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 5913
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2349

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5916
    :cond_6
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2349

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5919
    goto/16 :goto_0

    .line 5902
    :sswitch_7
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 5903
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2348

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5906
    :cond_7
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2348

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5909
    goto/16 :goto_0

    .line 5892
    :sswitch_8
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 5893
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2347

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5896
    :cond_8
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2347

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5899
    goto/16 :goto_0

    .line 5882
    :sswitch_9
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 5883
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2346

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5886
    :cond_9
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2346

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5889
    goto/16 :goto_0

    .line 5871
    :sswitch_a
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 5872
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2345

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5875
    :cond_a
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2345

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5879
    goto/16 :goto_0

    .line 5861
    :sswitch_b
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    .line 5862
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2344

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5865
    :cond_b
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2344

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5868
    goto/16 :goto_0

    .line 5851
    :sswitch_c
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 5852
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2343

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5855
    :cond_c
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2343

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5858
    goto/16 :goto_0

    .line 5841
    :sswitch_d
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    .line 5842
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2342

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5845
    :cond_d
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2342

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5848
    goto/16 :goto_0

    .line 5831
    :sswitch_e
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    .line 5832
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2341

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5835
    :cond_e
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2341

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5838
    goto/16 :goto_0

    .line 5819
    :sswitch_f
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    .line 5820
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2340

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5824
    :cond_f
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2340

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5828
    goto/16 :goto_0

    .line 5809
    :sswitch_10
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 5810
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233f

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5813
    :cond_10
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233f

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5816
    goto/16 :goto_0

    .line 5799
    :sswitch_11
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_11

    .line 5800
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233e

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5803
    :cond_11
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233e

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5806
    goto/16 :goto_0

    .line 5787
    :sswitch_12
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12

    .line 5788
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233d

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5792
    :cond_12
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233d

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5796
    goto/16 :goto_0

    .line 5775
    :sswitch_13
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13

    .line 5776
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233c

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5780
    :cond_13
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233c

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5784
    goto/16 :goto_0

    .line 5765
    :sswitch_14
    const/16 v5, 0x233b

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    .line 5766
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5769
    :cond_14
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5772
    goto/16 :goto_0

    .line 5754
    :sswitch_15
    const/16 v5, 0x233a

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    .line 5755
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5758
    :cond_15
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5762
    goto/16 :goto_0

    .line 5744
    :sswitch_16
    const/16 v5, 0x2339

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    .line 5745
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5748
    :cond_16
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5751
    goto/16 :goto_0

    .line 5733
    :sswitch_17
    const/16 v5, 0x2338

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    .line 5734
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5737
    :cond_17
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5741
    goto/16 :goto_0

    .line 5722
    :sswitch_18
    const/16 v5, 0x2337

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_18

    .line 5723
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5726
    :cond_18
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5730
    goto/16 :goto_0

    .line 5711
    :sswitch_19
    const/16 v5, 0x2336

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_19

    .line 5712
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5715
    :cond_19
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5719
    goto/16 :goto_0

    .line 5699
    :sswitch_1a
    const/16 v5, 0x2335

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 5700
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5704
    :cond_1a
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5708
    goto/16 :goto_0

    .line 5689
    :sswitch_1b
    const/16 v5, 0x2334

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 5690
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5693
    :cond_1b
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5696
    goto/16 :goto_0

    .line 5679
    :sswitch_1c
    const/16 v5, 0x2333

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 5680
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5683
    :cond_1c
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5686
    goto/16 :goto_0

    .line 5669
    :sswitch_1d
    const/16 v5, 0x2332

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 5670
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5673
    :cond_1d
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5676
    goto/16 :goto_0

    .line 5659
    :sswitch_1e
    const/16 v5, 0x2331

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 5660
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5663
    :cond_1e
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5666
    goto/16 :goto_0

    .line 5646
    :sswitch_1f
    const/16 v5, 0x2330

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 5647
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5651
    :cond_1f
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5656
    goto/16 :goto_0

    .line 5636
    :sswitch_20
    const/16 v5, 0x232f

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_20

    .line 5637
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5640
    :cond_20
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5643
    goto/16 :goto_0

    .line 5626
    :sswitch_21
    const/16 v5, 0x232e

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_21

    .line 5627
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5630
    :cond_21
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5633
    goto/16 :goto_0

    .line 5616
    :sswitch_22
    const/16 v5, 0x232d

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_22

    .line 5617
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5620
    :cond_22
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5623
    goto/16 :goto_0

    .line 5606
    :sswitch_23
    const/16 v5, 0x232c

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_23

    .line 5607
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5610
    :cond_23
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5613
    goto/16 :goto_0

    .line 5596
    :sswitch_24
    const/16 v5, 0x232b

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_24

    .line 5597
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5600
    :cond_24
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5603
    goto :goto_0

    .line 5586
    :sswitch_25
    const/16 v5, 0x232a

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_25

    .line 5587
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5590
    :cond_25
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5593
    goto :goto_0

    .line 5576
    :sswitch_26
    const/16 v5, 0x2329

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_26

    .line 5577
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5580
    :cond_26
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5583
    goto :goto_0

    .line 5566
    :sswitch_27
    const/16 v5, 0x2328

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27

    .line 5567
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5570
    :cond_27
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5573
    nop

    .line 5987
    :cond_28
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOpImsReasonInfo(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5988
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_27
        0x190 -> :sswitch_26
        0x191 -> :sswitch_25
        0x192 -> :sswitch_24
        0x193 -> :sswitch_23
        0x194 -> :sswitch_22
        0x195 -> :sswitch_21
        0x196 -> :sswitch_20
        0x197 -> :sswitch_1f
        0x198 -> :sswitch_1e
        0x199 -> :sswitch_1d
        0x19a -> :sswitch_1c
        0x19b -> :sswitch_1b
        0x19d -> :sswitch_1a
        0x19e -> :sswitch_19
        0x19f -> :sswitch_18
        0x1a0 -> :sswitch_17
        0x1a4 -> :sswitch_16
        0x1a5 -> :sswitch_15
        0x1a7 -> :sswitch_14
        0x1e0 -> :sswitch_13
        0x1e1 -> :sswitch_12
        0x1e2 -> :sswitch_11
        0x1e3 -> :sswitch_10
        0x1e4 -> :sswitch_f
        0x1e5 -> :sswitch_e
        0x1e6 -> :sswitch_d
        0x1e7 -> :sswitch_c
        0x1e8 -> :sswitch_b
        0x1f4 -> :sswitch_a
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_8
        0x1f7 -> :sswitch_7
        0x1f8 -> :sswitch_6
        0x1f9 -> :sswitch_5
        0x201 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x25e -> :sswitch_0
    .end sparse-switch
.end method

.method private getPictureUrlFromCallInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callInfo"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .line 6225
    const-string v0, ""

    .line 6226
    .local v0, "value":Ljava/lang/String;
    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 6229
    :cond_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6233
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6234
    return-object p1

    .line 6237
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6238
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 6239
    const-string v2, ">"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 6240
    .local v2, "endIndex":I
    if-gez v2, :cond_3

    .line 6241
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6243
    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6245
    :goto_0
    return-object v0

    .line 6230
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_4
    :goto_1
    return-object v0

    .line 6227
    :cond_5
    :goto_2
    return-object v0
.end method

.method private getRadioTechFromRatType(I)I
    .locals 1
    .param p1, "ratType"    # I

    .line 4004
    packed-switch p1, :pswitch_data_0

    .line 4010
    const/4 v0, 0x0

    return v0

    .line 4008
    :pswitch_0
    const/16 v0, 0x12

    return v0

    .line 4006
    :pswitch_1
    const/16 v0, 0xe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoDirectionFromVideoState(I)I
    .locals 2
    .param p1, "videoState"    # I

    .line 3899
    packed-switch p1, :pswitch_data_0

    .line 3911
    const/4 v0, -0x1

    return v0

    .line 3909
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 3907
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3905
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3901
    :pswitch_3
    const-string v0, "getVideoDirectionFromVideoState() : Should not handle pause here"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3903
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWfcMdn()Ljava/lang/String;
    .locals 6

    .line 5334
    const/4 v0, 0x0

    .line 5335
    .local v0, "wfcMdn":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5336
    .local v1, "imsConfig":Lcom/android/ims/ImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 5337
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 5339
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 5340
    if-eqz v1, :cond_0

    .line 5341
    const/16 v4, 0x3ea

    invoke-virtual {v1, v4}, Lcom/android/ims/ImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "wfcMdn":Ljava/lang/String;
    .local v3, "wfcMdn":Ljava/lang/String;
    goto :goto_0

    .line 5344
    .end local v3    # "wfcMdn":Ljava/lang/String;
    .restart local v0    # "wfcMdn":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 5345
    .local v4, "e":Lcom/android/ims/ImsException;
    const-string v5, "getWfcMdn() : ImsConfig null"

    invoke-direct {p0, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5346
    invoke-virtual {v4}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 5347
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 5349
    :cond_1
    const-string v4, "getWfcMdn() : ImsManager null"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5352
    :goto_1
    return-object v0
.end method

.method private getWifiRssi()I
    .locals 5

    .line 4724
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 4725
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 4726
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 4727
    const/4 v2, -0x1

    return v2

    .line 4729
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 4730
    .local v2, "rssi":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiRssi()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4731
    return v2
.end method

.method private handleCachedTerminateReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 4352
    move-object v0, p1

    .line 4354
    .local v0, "cachedInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-nez p1, :cond_0

    .line 4355
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 4357
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4359
    :goto_0
    return-void
.end method

.method private handleCallAdditionalInfo(Landroid/os/AsyncResult;)V
    .locals 22
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 6019
    move-object/from16 v1, p0

    const-string v0, "UTF-8"

    const-string v2, "ImsCallSessionProxy"

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 6020
    .local v4, "additionalCallInfo":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6021
    .local v6, "type":I
    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 6022
    .local v8, "callId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCallAdditionalInfo type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", callId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-direct {v1, v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6024
    const/16 v9, 0x65

    const-string v11, "ims_gwsd"

    if-ne v6, v9, :cond_1

    .line 6025
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6026
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v11, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    move-object/from16 v19, v4

    goto/16 :goto_c

    .line 6025
    :cond_0
    move-object/from16 v19, v4

    goto/16 :goto_c

    .line 6028
    :cond_1
    const/16 v9, 0x67

    if-ne v6, v9, :cond_3

    .line 6029
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6030
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v11, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    move-object/from16 v19, v4

    goto/16 :goto_c

    .line 6029
    :cond_2
    move-object/from16 v19, v4

    goto/16 :goto_c

    .line 6032
    :cond_3
    const/16 v9, 0x66

    if-ne v6, v9, :cond_15

    .line 6033
    const/4 v9, 0x6

    aget-object v11, v4, v9

    if-eqz v11, :cond_14

    aget-object v11, v4, v9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v19, v4

    goto/16 :goto_b

    .line 6036
    :cond_4
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v11, :cond_13

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 6037
    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 6038
    .local v11, "subType":I
    const-string v12, ","

    if-ne v11, v7, :cond_f

    .line 6039
    const/4 v13, 0x3

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 6040
    .local v14, "total":I
    const/4 v15, 0x4

    aget-object v16, v4, v15

    move/from16 v17, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 6041
    .local v9, "index":I
    const/16 v16, 0x5

    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 6042
    .local v13, "count":I
    if-ne v9, v7, :cond_5

    .line 6043
    aget-object v5, v4, v17

    iput-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    move/from16 v18, v7

    goto :goto_0

    .line 6045
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    .line 6047
    :goto_0
    if-eq v9, v14, :cond_6

    .line 6049
    return-void

    .line 6053
    :cond_6
    :try_start_0
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6054
    .local v5, "split":[Ljava/lang/String;
    array-length v7, v5

    div-int/2addr v7, v10
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6055
    .local v7, "headerCount":I
    if-eq v7, v13, :cond_7

    .line 6056
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Header count unmatched: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6100
    .end local v5    # "split":[Ljava/lang/String;
    .end local v7    # "headerCount":I
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 6098
    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_8

    .line 6059
    .restart local v5    # "split":[Ljava/lang/String;
    .restart local v7    # "headerCount":I
    :cond_7
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v7, :cond_e

    .line 6060
    mul-int/lit8 v12, v10, 0x2

    :try_start_2
    aget-object v12, v5, v12

    invoke-direct {v1, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 6061
    .local v12, "keyBytes":[B
    mul-int/lit8 v15, v10, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v5, v15

    invoke-direct {v1, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 6062
    .local v15, "valueBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6063
    .local v3, "key":Ljava/lang/String;
    move-object/from16 v19, v4

    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .local v19, "additionalCallInfo":[Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6064
    .local v4, "value":Ljava/lang/String;
    move-object/from16 v20, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "split":[Ljava/lang/String;
    .local v17, "split":[Ljava/lang/String;
    const-string v5, "key-value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v1, v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6066
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6067
    goto/16 :goto_6

    .line 6069
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_9
    goto :goto_3

    :sswitch_0
    const-string v0, "Organization"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_1
    const-string v0, "Call-Info"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_4

    :sswitch_2
    const-string v0, "Subject"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :sswitch_3
    const-string v0, "Priority"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v0, v18

    goto :goto_4

    :goto_3
    const/4 v0, -0x1

    :goto_4
    packed-switch v0, :pswitch_data_0

    move-object/from16 v21, v3

    .end local v3    # "key":Ljava/lang/String;
    .local v21, "key":Ljava/lang/String;
    goto :goto_6

    .line 6091
    .end local v21    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v5, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    move-object/from16 v21, v3

    move/from16 v3, v18

    .end local v3    # "key":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/String;
    invoke-virtual {v0, v5, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 6093
    goto :goto_6

    .line 6086
    .end local v21    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v21, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/String;
    const-string v0, "<"

    invoke-direct {v1, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getPictureUrlFromCallInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6087
    .local v0, "pictureUrl":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v5, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v3, v5, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 6089
    goto :goto_6

    .line 6074
    .end local v0    # "pictureUrl":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v21, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/String;
    const-string v0, "standard"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v3, "android.telephony.ims.extra.PRIORITY"

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "normal"

    .line 6075
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 6078
    :cond_a
    const-string v0, "important"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "urgent"

    .line 6079
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6080
    :cond_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 6076
    :cond_c
    :goto_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 6071
    .end local v21    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v21, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 6072
    nop

    .line 6059
    .end local v4    # "value":Ljava/lang/String;
    .end local v12    # "keyBytes":[B
    .end local v15    # "valueBytes":[B
    .end local v21    # "key":Ljava/lang/String;
    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, v17

    move-object/from16 v4, v19

    move-object/from16 v0, v20

    const/16 v18, 0x1

    goto/16 :goto_2

    .line 6100
    .end local v7    # "headerCount":I
    .end local v10    # "i":I
    .end local v17    # "split":[Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_7

    .line 6098
    :catch_3
    move-exception v0

    goto :goto_8

    .line 6059
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .local v4, "additionalCallInfo":[Ljava/lang/String;
    .restart local v5    # "split":[Ljava/lang/String;
    .restart local v7    # "headerCount":I
    .restart local v10    # "i":I
    :cond_e
    move-object/from16 v19, v4

    move-object/from16 v17, v5

    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v7    # "headerCount":I
    .end local v10    # "i":I
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    goto :goto_9

    .line 6100
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v19, v4

    .line 6101
    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    :goto_7
    const-string v3, "handleCallAdditionalInfo() RuntimeException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 6098
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v19, v4

    .line 6099
    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    :goto_8
    const-string v3, "handleCallAdditionalInfo() UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6102
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_9
    goto :goto_a

    .line 6103
    .end local v9    # "index":I
    .end local v13    # "count":I
    .end local v14    # "total":I
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :cond_f
    move-object/from16 v19, v4

    move/from16 v17, v9

    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v11, v5, :cond_12

    .line 6104
    aget-object v0, v19, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6105
    .local v0, "location":[Ljava/lang/String;
    if-nez v0, :cond_10

    .line 6106
    return-void

    .line 6108
    :cond_10
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 6109
    .local v2, "locationExtra":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->reset()V

    .line 6110
    const/16 v16, 0x0

    aget-object v3, v0, v16

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 6111
    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_11

    .line 6112
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 6114
    :cond_11
    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_c

    .line 6103
    .end local v0    # "location":[Ljava/lang/String;
    .end local v2    # "locationExtra":Landroid/location/Location;
    :cond_12
    :goto_a
    goto :goto_c

    .line 6036
    .end local v11    # "subType":I
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :cond_13
    move-object/from16 v19, v4

    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    goto :goto_c

    .line 6033
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :cond_14
    move-object/from16 v19, v4

    .line 6034
    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    :goto_b
    return-void

    .line 6032
    .end local v19    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v4    # "additionalCallInfo":[Ljava/lang/String;
    :cond_15
    move-object/from16 v19, v4

    .line 6118
    .end local v4    # "additionalCallInfo":[Ljava/lang/String;
    .restart local v19    # "additionalCallInfo":[Ljava/lang/String;
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x419d223c -> :sswitch_3
        -0xc1d12f4 -> :sswitch_2
        0x36446abd -> :sswitch_1
        0x50104153 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallRatIndication(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4286
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4287
    .local v0, "result":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 4288
    .local v1, "domain":I
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 4290
    .local v3, "callRat":I
    if-nez v1, :cond_0

    .line 4291
    return-void

    .line 4293
    :cond_0
    if-ne v3, v2, :cond_1

    .line 4294
    const/4 v3, 0x0

    goto :goto_0

    .line 4295
    :cond_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    .line 4296
    const/4 v3, 0x1

    goto :goto_0

    .line 4297
    :cond_2
    const/4 v2, 0x3

    if-ne v3, v2, :cond_3

    .line 4298
    const/4 v3, 0x5

    goto :goto_0

    .line 4299
    :cond_3
    if-gtz v3, :cond_4

    .line 4300
    const/4 v3, -0x1

    .line 4303
    :cond_4
    :goto_0
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    move-result v2

    .line 4305
    .local v2, "isCallRatUpdated":Z
    if-eqz v2, :cond_5

    .line 4306
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 4308
    :cond_5
    return-void
.end method

.method private handleImsRegistrationInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4330
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 4331
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isSpecialEccNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4332
    .local v1, "isEmergencyNumber":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 4333
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 4338
    :cond_2
    const/4 v2, -0x1

    .line 4339
    .local v2, "callRat":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4340
    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 4341
    const/4 v2, -0x1

    .line 4344
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    move-result v3

    .line 4345
    .local v3, "isCallRatUpdated":Z
    if-eqz v3, :cond_4

    .line 4346
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 4348
    :cond_4
    return-void

    .line 4335
    .end local v2    # "callRat":I
    .end local v3    # "isCallRatUpdated":Z
    :cond_5
    :goto_1
    return-void
.end method

.method private handleRedialEccIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 5161
    const-string v0, "handleRedialEccIndication()"

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    if-nez p1, :cond_0

    .line 5164
    const-string v0, "handleRedialEccIndication() : ar is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    return-void

    .line 5169
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5170
    const-string v0, "handleRedialEccIndication() : Call established, ignore indication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    return-void

    .line 5174
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 5175
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 5176
    const-string v2, "handleRedialEccIndication() : ar.result is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    return-void

    .line 5179
    :cond_2
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5180
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    goto :goto_0

    .line 5181
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v3, :cond_5

    .line 5182
    aget-object v3, v0, v2

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 5184
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRedialEcc(Z)V

    goto :goto_0

    .line 5185
    :cond_4
    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5187
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRedialEcc(Z)V

    .line 5188
    const-string v2, "handleRedialEccIndication(): set e-call to profile"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "e_call"

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 5190
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 5193
    :cond_5
    :goto_0
    return-void
.end method

.method private handleSipHeaderInfo(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 5441
    const-string v0, "ImsCallSessionProxy"

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 5442
    .local v1, "sipHeaderInfo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5443
    const/4 v2, 0x0

    .line 5444
    .local v2, "headerType":I
    const/4 v3, 0x0

    .line 5445
    .local v3, "totalCount":I
    const/4 v4, 0x0

    .line 5446
    .local v4, "index":I
    const/4 v5, 0x1

    aget-object v6, v1, v5

    const-string v7, ""

    if-eqz v6, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5447
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5451
    :cond_0
    const/4 v5, 0x2

    aget-object v6, v1, v5

    if-eqz v6, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5452
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5455
    :cond_1
    const/4 v6, 0x3

    aget-object v8, v1, v6

    if-eqz v8, :cond_2

    aget-object v8, v1, v6

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5456
    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5459
    :cond_2
    const/16 v6, 0xd

    if-ne v2, v6, :cond_4

    .line 5460
    const-string v6, ""

    .line 5461
    .local v6, "headerCallId":Ljava/lang/String;
    const/4 v8, 0x4

    aget-object v9, v1, v8

    if-eqz v9, :cond_3

    aget-object v9, v1, v8

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5462
    aget-object v6, v1, v8

    .line 5466
    :cond_3
    :try_start_0
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 5467
    .local v7, "bytes":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    .line 5468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSipHeaderInfo() : mHeaderCallId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "bytes":[B
    goto :goto_0

    .line 5472
    :catch_0
    move-exception v5

    .line 5473
    .local v5, "ex":Ljava/lang/RuntimeException;
    const-string v7, "handleSipHeaderInfo() RuntimeException"

    invoke-static {v0, v7, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5470
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 5471
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v7, "handleSipHeaderInfo() implausible UnsupportedEncodingException"

    invoke-static {v0, v7, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5474
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    nop

    .line 5477
    .end local v2    # "headerType":I
    .end local v3    # "totalCount":I
    .end local v4    # "index":I
    .end local v6    # "headerCallId":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private handleSpeechCodecInfo(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4960
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 4961
    .local v0, "codec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpeechCodecInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4963
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_0

    .line 4964
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSpeechCodecInfoWithoutBitrate(I)V

    goto :goto_0

    .line 4966
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSpeechCodecInfoWithBitrate(I)V

    .line 4968
    :goto_0
    return-void
.end method

.method private handleSpeechCodecInfoWithBitrate(I)V
    .locals 14
    .param p1, "codec"    # I

    .line 5028
    const/4 v0, 0x0

    .line 5029
    .local v0, "newAudioQuality":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5030
    .local v1, "oldAudioQuality":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 5031
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;

    move-result-object v2

    .line 5033
    .local v2, "oldCodecAttributes":Landroid/telephony/ims/AudioCodecAttributes;
    and-int/lit16 v3, p1, 0xf0

    .line 5034
    .local v3, "audioCodec":I
    and-int/lit8 v4, p1, 0xf

    .line 5035
    .local v4, "bitrateLevel":I
    const/16 v5, 0xc

    const/4 v6, 0x2

    if-le v4, v5, :cond_0

    .line 5036
    const-string v5, "handleSpeechCodecInfoWithBitrate : bitrateLevel is error"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5038
    return-void

    .line 5040
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpeechCodecInfoWithBitrate : audiocodec: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", bitrateLevel: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5043
    if-eqz v2, :cond_1

    .line 5044
    invoke-virtual {v2}, Landroid/telephony/ims/AudioCodecAttributes;->getBitrateKbps()F

    move-result v5

    .local v5, "oldBitrateKbps":F
    goto :goto_0

    .line 5046
    .end local v5    # "oldBitrateKbps":F
    :cond_1
    const/4 v5, 0x0

    .line 5049
    .restart local v5    # "oldBitrateKbps":F
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 5067
    const/4 v0, 0x0

    .line 5068
    const/4 v7, 0x0

    .local v7, "newBitrateKbps":F
    goto :goto_1

    .line 5063
    .end local v7    # "newBitrateKbps":F
    :sswitch_0
    const/16 v0, 0x14

    .line 5064
    sget-object v7, Lcom/mediatek/ims/ImsCallSessionProxy;->BITRATE_TABLE:[F

    aget v7, v7, v4

    .line 5065
    .restart local v7    # "newBitrateKbps":F
    goto :goto_1

    .line 5059
    .end local v7    # "newBitrateKbps":F
    :sswitch_1
    const/16 v0, 0x13

    .line 5060
    sget-object v7, Lcom/mediatek/ims/ImsCallSessionProxy;->BITRATE_TABLE:[F

    aget v7, v7, v4

    .line 5061
    .restart local v7    # "newBitrateKbps":F
    goto :goto_1

    .line 5055
    .end local v7    # "newBitrateKbps":F
    :sswitch_2
    const/16 v0, 0x12

    .line 5056
    sget-object v7, Lcom/mediatek/ims/ImsCallSessionProxy;->BITRATE_TABLE:[F

    aget v7, v7, v4

    .line 5057
    .restart local v7    # "newBitrateKbps":F
    goto :goto_1

    .line 5051
    .end local v7    # "newBitrateKbps":F
    :sswitch_3
    const/16 v0, 0x11

    .line 5052
    sget-object v7, Lcom/mediatek/ims/ImsCallSessionProxy;->BITRATE_TABLE:[F

    aget v7, v7, v4

    .line 5053
    .restart local v7    # "newBitrateKbps":F
    nop

    .line 5071
    :goto_1
    if-ne v0, v1, :cond_2

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_3

    .line 5072
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpeechCodecInfoWithBitrate : newAudioQuality"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newBitrateKbps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5074
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v6, v6, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v0, v6, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5075
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v6, v6, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    new-instance v8, Landroid/telephony/ims/AudioCodecAttributes;

    new-instance v9, Landroid/util/Range;

    .line 5077
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v10, Landroid/util/Range;

    .line 5078
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v8, v7, v9, v11, v10}, Landroid/telephony/ims/AudioCodecAttributes;-><init>(FLandroid/util/Range;FLandroid/util/Range;)V

    .line 5075
    invoke-virtual {v6, v8}, Landroid/telephony/ims/ImsStreamMediaProfile;->setAudioCodecAttributes(Landroid/telephony/ims/AudioCodecAttributes;)V

    .line 5079
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 5081
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_3
        0x90 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSpeechCodecInfoWithoutBitrate(I)V
    .locals 3
    .param p1, "codec"    # I

    .line 5084
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5085
    .local v0, "oldAudioQuality":I
    const/4 v1, 0x0

    .line 5086
    .local v1, "newAudioQuality":I
    sparse-switch p1, :sswitch_data_0

    .line 5133
    const/4 v1, 0x0

    goto :goto_0

    .line 5130
    :sswitch_0
    const/4 v1, 0x2

    .line 5131
    goto :goto_0

    .line 5127
    :sswitch_1
    const/16 v1, 0x14

    .line 5128
    goto :goto_0

    .line 5124
    :sswitch_2
    const/16 v1, 0x13

    .line 5125
    goto :goto_0

    .line 5121
    :sswitch_3
    const/16 v1, 0x12

    .line 5122
    goto :goto_0

    .line 5118
    :sswitch_4
    const/16 v1, 0x11

    .line 5119
    goto :goto_0

    .line 5115
    :sswitch_5
    const/16 v1, 0xa

    .line 5116
    goto :goto_0

    .line 5112
    :sswitch_6
    const/16 v1, 0x9

    .line 5113
    goto :goto_0

    .line 5109
    :sswitch_7
    const/16 v1, 0x8

    .line 5110
    goto :goto_0

    .line 5106
    :sswitch_8
    const/4 v1, 0x2

    .line 5107
    goto :goto_0

    .line 5103
    :sswitch_9
    const/4 v1, 0x1

    .line 5104
    goto :goto_0

    .line 5100
    :sswitch_a
    const/4 v1, 0x7

    .line 5101
    goto :goto_0

    .line 5097
    :sswitch_b
    const/4 v1, 0x6

    .line 5098
    goto :goto_0

    .line 5094
    :sswitch_c
    const/4 v1, 0x5

    .line 5095
    goto :goto_0

    .line 5091
    :sswitch_d
    const/4 v1, 0x4

    .line 5092
    goto :goto_0

    .line 5088
    :sswitch_e
    const/4 v1, 0x3

    .line 5089
    nop

    .line 5136
    :goto_0
    if-eq v1, v0, :cond_0

    .line 5137
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5138
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 5140
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSrvccStateIndication(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4453
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 4454
    .local v0, "srvccState":I
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4455
    const-string v1, "BSRVCC happend and has not received ECPI0, close here"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4457
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4459
    :cond_0
    return-void
.end method

.method private handleVideoRingtoneInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4362
    const-string v0, "handleVideoRingtoneInfo():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4364
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4365
    .local v0, "videoRingtoneInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 4366
    .local v2, "msgType":I
    const/4 v3, 0x0

    .line 4367
    .local v3, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4368
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4369
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 4377
    :sswitch_0
    aget-object v3, v0, v1

    .line 4379
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    goto :goto_0

    .line 4374
    :sswitch_1
    goto :goto_0

    .line 4371
    :sswitch_2
    nop

    .line 4380
    :goto_0
    goto :goto_1

    .line 4383
    :cond_0
    const-string v4, "handleVideoRingtoneInfo: mismatch call id"

    invoke-direct {p0, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4385
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v1, :cond_1

    .line 4386
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyVideoRingtoneEvent(ILjava/lang/String;)V

    .line 4388
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hex"    # Ljava/lang/String;

    .line 5480
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 5482
    .end local p1    # "hex":Ljava/lang/String;
    .local v0, "hex":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    .line 5484
    .local p1, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5485
    mul-int/lit8 v2, v1, 0x2

    .line 5486
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 5487
    .local v3, "v":I
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 5484
    .end local v2    # "index":I
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5489
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method private isAllowRttVideoSwitch()Z
    .locals 6

    .line 5545
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "mediatek:wasVideoCall"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5547
    .local v0, "wasVideoCall":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5548
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5549
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-string v3, "mtk_rtt_video_switch_supported_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 5552
    .local v3, "isRttVideoSwitchable":Z
    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v4
.end method

.method private isAnsweredElsewhere(Ljava/lang/String;)Z
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 4850
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4851
    return v0

    .line 4854
    :cond_0
    const-string v1, "Call Completion Elsewhere"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4855
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call completed elsewhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4858
    :cond_1
    return v0

    .line 4856
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4498
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4501
    :cond_0
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4502
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 4503
    return v0

    .line 4505
    :cond_1
    const-string v2, "CallPull"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4506
    .local v0, "isCallPull":Z
    return v0

    .line 4499
    .end local v0    # "isCallPull":Z
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return v0
.end method

.method private isEmergencyAddressRegistered()Z
    .locals 2

    .line 5356
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getWfcMdn()Ljava/lang/String;

    move-result-object v0

    .line 5357
    .local v0, "wfcMdn":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5360
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 5358
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private isEnrichedCallingSupported()Z
    .locals 2

    .line 6249
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 6250
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 6251
    .local v0, "isEnrichedCallingSupported":Z
    return v0
.end method

.method private isImsEccSupported()Z
    .locals 6

    .line 4263
    const/4 v0, 0x0

    .line 4264
    .local v0, "isImsEccSupported":Z
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 4265
    .local v1, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v1, :cond_2

    .line 4266
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v2

    .line 4267
    .local v2, "dataRegInfo":Landroid/telephony/DataSpecificRegistrationInfo;
    if-eqz v2, :cond_2

    .line 4268
    invoke-virtual {v2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    .line 4269
    .local v3, "vopsInfo":Landroid/telephony/VopsSupportInfo;
    if-eqz v3, :cond_2

    .line 4270
    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isEmergencyServiceSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4271
    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isEmergencyServiceFallbackSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .line 4272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsEccSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4276
    .end local v2    # "dataRegInfo":Landroid/telephony/DataSpecificRegistrationInfo;
    .end local v3    # "vopsInfo":Landroid/telephony/VopsSupportInfo;
    :cond_2
    return v0
.end method

.method private isMtRttWithoutPrecondition()Z
    .locals 4

    .line 5504
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5505
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5506
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 5505
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5506
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5507
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_mt_rtt_without_precondition_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private isNeedBlockMergeAction()Z
    .locals 3

    .line 4695
    const/4 v0, 0x0

    .line 4696
    .local v0, "result":Z
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP120:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 4697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedBlockMergeAction() : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4698
    return v0
.end method

.method private isRemoteCallDecline(Ljava/lang/String;)Z
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 4863
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4864
    return v0

    .line 4867
    :cond_0
    const-string v1, "Another device sent All Devices Busy response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4868
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "declined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4869
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "busy everywhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4872
    :cond_1
    return v0

    .line 4870
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRttEmcGuardTimerSupport()Z
    .locals 4

    .line 6256
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6257
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 6258
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 6257
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 6258
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 6259
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_emc_rtt_guard_timer_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private isRttSupported()Z
    .locals 3

    .line 1521
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1522
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1523
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1522
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1523
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v1

    .line 1522
    return v1
.end method

.method private isSpecialEccNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 5994
    if-nez p1, :cond_0

    .line 5995
    const/4 v0, 0x0

    return v0

    .line 5997
    :cond_0
    const/4 v0, 0x0

    .line 5998
    .local v0, "isSpecialEccNumber":Z
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6009
    :pswitch_0
    const-string v1, "vendor.ril.special.ecclist3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 6006
    :pswitch_1
    const-string v1, "vendor.ril.special.ecclist2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6007
    goto :goto_0

    .line 6003
    :pswitch_2
    const-string v1, "vendor.ril.special.ecclist1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6004
    goto :goto_0

    .line 6000
    :pswitch_3
    const-string v1, "vendor.ril.special.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6001
    nop

    .line 6012
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpecialEccNumber() : mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSpecialEccNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6014
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isUserPerfromedHangup()Z
    .locals 1

    .line 4702
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v0, :cond_0

    .line 4703
    const/4 v0, 0x1

    return v0

    .line 4705
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4515
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4516
    return v0

    .line 4518
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 4520
    const/4 v0, 0x1

    return v0

    .line 4522
    :cond_1
    return v0
.end method

.method private logEventResult(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 4933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, " success"

    goto :goto_0

    :cond_0
    const-string v1, " failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4934
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 4917
    const/4 v0, 0x1

    const-string v1, "] "

    const-string v2, "[callId = "

    const-string v3, "ImsCallSessionProxy"

    if-ne v0, p2, :cond_0

    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-eqz v0, :cond_0

    .line 4918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4919
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 4920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4921
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p2, :cond_2

    .line 4922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4923
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p2, :cond_3

    .line 4924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4925
    :cond_3
    const/4 v0, 0x5

    if-ne v0, p2, :cond_4

    .line 4926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4928
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    :goto_0
    return-void
.end method

.method private mergeCompleted()V
    .locals 3

    .line 3962
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionMergeComplete()V

    .line 3963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 3964
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 3965
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 3966
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 3968
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    .line 3969
    .local v0, "hostCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v0, :cond_0

    .line 3970
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onAddParticipantComplete()V

    .line 3977
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3978
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3979
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 3980
    return-void
.end method

.method private mergeFailed()V
    .locals 3

    .line 3983
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 3985
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3988
    goto :goto_0

    .line 3986
    :catch_0
    move-exception v0

    .line 3987
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException callSessionMergeFailed()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3990
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 3991
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 3992
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 3993
    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 3994
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 3996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 3997
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    .line 3998
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 3999
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 4000
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->closeConferenceSession()V

    .line 4001
    return-void
.end method

.method private notifyCachedVideoRingtoneButtonInfo()V
    .locals 3

    .line 4391
    const-string v0, "notifyCachedVideoRingtoneButtonInfo():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4393
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4394
    const-string v0, "cached ringtone info is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4397
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 4398
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyVideoRingtoneEvent(ILjava/lang/String;)V

    .line 4401
    :cond_1
    return-void
.end method

.method private notifyCallSessionMergeComplete()V
    .locals 3

    .line 4662
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isStkCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4663
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 4664
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_1

    .line 4666
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_1

    .line 4668
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 4670
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_2

    .line 4671
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_0

    .line 4675
    :cond_2
    const/4 v0, 0x0

    .line 4677
    .local v0, "newSession":Lcom/android/ims/internal/IImsCallSession;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4684
    .end local v0    # "newSession":Lcom/android/ims/internal/IImsCallSession;
    :goto_0
    goto :goto_1

    .line 4679
    :catch_0
    move-exception v0

    .line 4680
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException callSessionMergeComplete()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4683
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4686
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    return-void
.end method

.method private notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 4101
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 4124
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    const/16 v3, 0x1f5

    if-eq v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    if-eqz v0, :cond_2

    .line 4125
    :cond_1
    const-string v0, "notifyCallSessionTerminated() : close while merging"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4126
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 4129
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4154
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_4

    .line 4158
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4159
    :catch_0
    move-exception v0

    .line 4160
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionTerminated()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4163
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4164
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_2

    .line 4131
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_4

    .line 4137
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0xf1

    if-ne v0, v3, :cond_3

    .line 4138
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needReportCallTerminatedForFdn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4139
    const-string v0, "65535"

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 4140
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 4143
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4145
    :catch_1
    move-exception v0

    .line 4146
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionInitiatedFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4149
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4150
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 4171
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    .line 4172
    return-void

    .line 4102
    :cond_5
    :goto_3
    const-string v0, "notifyCallSessionTerminated() : mListener = NULL"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4104
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4105
    :try_start_2
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 4106
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4108
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    if-eq v0, v1, :cond_6

    .line 4109
    const-string v0, "has not received ECPI0, close here"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4110
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4116
    :cond_6
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_7

    .line 4117
    const-string v0, "user decline, close here"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4118
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4121
    :cond_7
    return-void

    .line 4106
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCallSessionUpdated()V
    .locals 3

    .line 4437
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-nez v0, :cond_0

    .line 4438
    return-void

    .line 4441
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4444
    goto :goto_0

    .line 4442
    :catch_0
    move-exception v0

    .line 4443
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException callSessionUpdated()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4445
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private notifyNotRingingMtIfRequired()V
    .locals 6

    .line 1634
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1641
    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1640
    const-string v3, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 1644
    .local v0, "serviceId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1645
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android:imsCallID"

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v3, "android:imsDialString"

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v3, "android:imsServiceId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1648
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 1649
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1650
    return-void

    .line 1635
    .end local v0    # "serviceId":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNotRingingMtIfRequired: sipSessionProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1638
    return-void
.end method

.method private notifyNotificationRingtone(ILjava/lang/String;)V
    .locals 2
    .param p1, "causeNum"    # I
    .param p2, "causeText"    # Ljava/lang/String;

    .line 4404
    const-string v0, "notifyNotificationRingtone():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4406
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 4407
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyNotificationRingtone(ILjava/lang/String;)V

    .line 4409
    :cond_0
    return-void
.end method

.method private notifyRemoteHeld()V
    .locals 3

    .line 4412
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 4414
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4415
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4418
    goto :goto_0

    .line 4416
    :catch_0
    move-exception v0

    .line 4417
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException callSessionHoldReceived()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4420
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyRemoteResumed()V
    .locals 3

    .line 4423
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4424
    return-void

    .line 4426
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 4428
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4429
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4432
    goto :goto_0

    .line 4430
    :catch_0
    move-exception v0

    .line 4431
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException callSessionResumeReceived()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4434
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private processMtRttWithoutPrecondition(I)V
    .locals 3
    .param p1, "remoteCapability"    # I

    .line 5493
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMtRttWithoutPrecondition()Z

    move-result v0

    .line 5495
    .local v0, "isWithoutPrecondition":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMtRttWithoutPrecondition: isWithoutPrecondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5498
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    if-nez v1, :cond_1

    .line 5499
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    .line 5501
    :cond_1
    return-void
.end method

.method private pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4510
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4511
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->pullCall(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 4512
    return-void
.end method

.method private rejectDial()V
    .locals 2

    .line 4877
    const-string v0, "rejectDial()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4878
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 4879
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4880
    return-void
.end method

.method private removeRemoteCallVideoCapability()Z
    .locals 2

    .line 4795
    const-string v0, "removeRemoteCallVideoCapability()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4797
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v0, v1, :cond_0

    .line 4798
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4799
    const/4 v0, 0x1

    return v0

    .line 4802
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendCallEventWithRat(I)V
    .locals 3
    .param p1, "msgType"    # I

    .line 4896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4897
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "mediatek:callInfoMessageType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4898
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const-string v2, "mediatek:callType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4899
    const-string v1, "mediatek:ratType"

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4900
    const-string v1, "mediatek:incomingCall"

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4901
    const-string v1, "mediatek:emergencyCall"

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4902
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->sendCallEventWithRat(Landroid/os/Bundle;)V

    .line 4903
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 4937
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setImsPreCallInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 22
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 6122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    .line 6125
    .local v2, "mode":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6126
    .local v3, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6127
    .local v4, "headerValuePair":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 6128
    .local v5, "headerCount":I
    const/4 v6, 0x0

    .line 6130
    .local v6, "total":I
    const-string v7, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v1, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6131
    .local v7, "subject":Ljava/lang/String;
    const-string v8, "android.telephony.ims.extra.PRIORITY"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v8

    .line 6133
    .local v8, "priority":I
    const-string v9, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v1, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6134
    .local v9, "pictureUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImsPreCallInfo Subject: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Priority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Call-Info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6135
    invoke-direct {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6134
    const/4 v11, 0x2

    invoke-direct {v0, v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6138
    const-string v10, ","

    if-eqz v7, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 6139
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subject"

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6140
    invoke-direct {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6139
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6141
    add-int/lit8 v5, v5, 0x1

    .line 6144
    :cond_0
    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 6146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call-Info"

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6149
    invoke-direct {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6148
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6150
    add-int/lit8 v5, v5, 0x1

    .line 6153
    :cond_1
    const-string v11, "Priority"

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 6154
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6155
    const-string v13, "important"

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6154
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6156
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6158
    :cond_2
    if-nez v8, :cond_3

    if-eqz v5, :cond_3

    .line 6159
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6160
    const-string v13, "standard"

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6159
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6161
    add-int/lit8 v5, v5, 0x1

    .line 6164
    :cond_3
    :goto_0
    const-string v13, ""

    if-eqz v5, :cond_6

    .line 6166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6170
    .local v14, "header":Ljava/lang/String;
    const/16 v15, 0x3e8

    .line 6171
    .local v15, "maxLength":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    div-int v16, v16, v15

    add-int/lit8 v6, v16, 0x1

    .line 6172
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6173
    const-string v12, "1"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6175
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6176
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6177
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6178
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-gt v12, v6, :cond_5

    .line 6179
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v4

    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .local v17, "headerValuePair":Ljava/lang/StringBuilder;
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v11, v12, -0x1

    mul-int/lit16 v11, v11, 0x3e8

    move/from16 v18, v5

    .end local v5    # "headerCount":I
    .local v18, "headerCount":I
    mul-int/lit16 v5, v12, 0x3e8

    move/from16 v19, v6

    .end local v6    # "total":I
    .local v19, "total":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 6181
    mul-int/lit16 v5, v12, 0x3e8

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    .line 6180
    :goto_2
    invoke-virtual {v14, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6182
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 6178
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_1

    .end local v17    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v18    # "headerCount":I
    .end local v19    # "total":I
    .restart local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v5    # "headerCount":I
    .restart local v6    # "total":I
    :cond_5
    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v5    # "headerCount":I
    .end local v6    # "total":I
    .restart local v17    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v18    # "headerCount":I
    .restart local v19    # "total":I
    goto :goto_3

    .line 6164
    .end local v12    # "i":I
    .end local v14    # "header":Ljava/lang/String;
    .end local v15    # "maxLength":I
    .end local v17    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v18    # "headerCount":I
    .end local v19    # "total":I
    .restart local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v5    # "headerCount":I
    .restart local v6    # "total":I
    :cond_6
    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 6188
    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v5    # "headerCount":I
    .restart local v17    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v18    # "headerCount":I
    :goto_3
    const-string v4, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 6189
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_7

    .line 6190
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 6191
    .local v11, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 6194
    .local v14, "longitude":D
    const/4 v5, 0x1

    .line 6195
    .local v5, "index":I
    const/4 v6, 0x1

    .line 6196
    const/4 v1, 0x1

    .line 6197
    .end local v18    # "headerCount":I
    .local v1, "headerCount":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v18

    .line 6198
    .local v19, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v20, v3

    .end local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v21, v2

    move-object/from16 v2, v19

    .end local v19    # "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "mode":I
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6199
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6204
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v3, v2, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    move v5, v1

    goto :goto_4

    .line 6189
    .end local v1    # "headerCount":I
    .end local v5    # "index":I
    .end local v11    # "latitude":D
    .end local v14    # "longitude":D
    .end local v20    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "mode":I
    .local v2, "mode":I
    .restart local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "headerCount":I
    :cond_7
    move/from16 v21, v2

    move-object/from16 v20, v3

    .end local v2    # "mode":I
    .end local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "mode":I
    move/from16 v5, v18

    .line 6207
    .end local v18    # "headerCount":I
    .local v5, "headerCount":I
    :goto_4
    return-void
.end method

.method private setRttModeForDial(Z)V
    .locals 8
    .param p1, "isRtt"    # Z

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRttModeForDial + isRtt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1534
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    return-void

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "rtt_calling_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1540
    .local v0, "isRttEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 1541
    const-string v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 1542
    .local v4, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v4, :cond_2

    .line 1543
    const-string v2, "cacheCarrierConfiguration: No carrier config service found."

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1545
    return-void

    .line 1547
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1548
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1547
    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1548
    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1550
    .local v5, "isRttAlwaysOnCarrierConfig":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRttEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CarrierConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1552
    if-nez v0, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v2

    .line 1558
    .end local v0    # "isRttEnabled":Z
    .local v6, "isRttEnabled":Z
    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1559
    const-string v3, "setRttModeForDial setRttMode 1"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1560
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 1561
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    goto :goto_3

    .line 1562
    :cond_5
    if-eqz v6, :cond_6

    .line 1563
    const-string v2, "setRttModeForDial setRttMode 2"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1564
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    goto :goto_3

    .line 1566
    :cond_6
    const-string v2, "setRttModeForDial setRttMode 0"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1567
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 1570
    :goto_3
    return-void
.end method

.method private shouldNotifyCallDropByBadWifiQuality()Z
    .locals 3

    .line 4709
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4710
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 4711
    .local v0, "notifyWifiQualityDisconnectCause":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldNotifyCallDropByBadWifiQuality() :  carrier =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUserPerfromedHangup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4713
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4711
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4715
    if-eqz v0, :cond_0

    .line 4716
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    if-ne v1, v2, :cond_0

    .line 4718
    const/4 v1, 0x1

    return v1

    .line 4720
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private terminateConferenceSession()V
    .locals 4

    .line 4618
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/16 v1, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 4619
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (mtk)"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4622
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4624
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4625
    .local v0, "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->terminate(I)V

    .line 4626
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 4627
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4629
    .end local v0    # "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    goto :goto_0

    .line 4630
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 4631
    const-string v0, "terminateConferenceSession() : init conference object not compelted."

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_0

    .line 4634
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_2

    .line 4635
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (aosp)"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4636
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4637
    .local v0, "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 4638
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 4639
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4641
    .end local v0    # "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    goto :goto_0

    .line 4642
    :cond_2
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 4645
    :goto_0
    return-void
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    .local v0, "b":Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 1425
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    shr-int/lit8 v2, p0, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1426
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    and-int/lit8 v2, p0, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "before"    # Ljava/lang/String;

    .line 6210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6211
    const-string v0, ""

    return-object v0

    .line 6214
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6215
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6216
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6217
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6221
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toggleRttAudioIndication()V
    .locals 8

    .line 5512
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5513
    return-void

    .line 5517
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5518
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5519
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 5518
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5519
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5520
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_rtt_audio_indication_supported_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x2

    if-nez v2, :cond_1

    .line 5522
    const-string v2, "toggleRttAudioIndication: carrier config not supported."

    invoke-direct {p0, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5524
    return-void

    .line 5527
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5535
    .local v2, "callId":I
    iget-boolean v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 5536
    const-string v3, "toggleRttAudioIndication: enable RTT audio indication."

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5537
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->toggleRttAudioIndication(IILandroid/os/Message;)V

    goto :goto_0

    .line 5538
    :cond_2
    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 5539
    const-string v5, "toggleRttAudioIndication: disable RTT audio indication."

    invoke-direct {p0, v5, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5540
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v2, v3, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->toggleRttAudioIndication(IILandroid/os/Message;)V

    .line 5542
    :cond_3
    :goto_0
    return-void
.end method

.method private tryTurnOnVolteForE911(Z)V
    .locals 9
    .param p1, "isEmergencyNumber"    # Z

    .line 5303
    if-eqz p1, :cond_5

    .line 5304
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 5305
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    .line 5306
    .local v1, "volteEnabledByPlatform":Z
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 5307
    .local v2, "volteEnabledByUser":Z
    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5308
    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5309
    .local v3, "isSimAbsent":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryTurnOnVolteForE911() : volteEnabledByPlatform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", volteEnabledByUser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSimAbsent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5313
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isImsEccSupported()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 5315
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v5, v6, v7, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V

    .line 5316
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 5320
    :cond_3
    sget-object v5, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5321
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isEmergencyAddressRegistered()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v5

    if-nez v5, :cond_5

    .line 5322
    const-string v5, "persist.vendor.mtk.volte.enable"

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v5

    .line 5324
    .local v5, "volteOn":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5325
    const/4 v5, 0x1

    .line 5327
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v6, v7, v8, v5, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V

    .line 5328
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVowifiForImsEcc(Z)V

    .line 5331
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v1    # "volteEnabledByPlatform":Z
    .end local v2    # "volteEnabledByUser":Z
    .end local v3    # "isSimAbsent":Z
    .end local v5    # "volteOn":I
    :cond_5
    return-void
.end method

.method private turnOffAirplaneMode()V
    .locals 4

    .line 5143
    const-string v0, "turnOffAirplaneMode()"

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 5147
    const-string v0, "turnOffAirplaneMode() : Turning off airplane mode."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5154
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5155
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5157
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCallStateForWifiOffload(I)V
    .locals 6
    .param p1, "callState"    # I

    .line 4050
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4051
    const-string v0, "updateCallStateForWifiOffload() : skip, no WOS!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4052
    return-void

    .line 4055
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4056
    const-string v0, "updateCallStateForWifiOffload() : skip, no call ID!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4057
    return-void

    .line 4060
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4061
    .local v0, "callId":I
    const/4 v2, 0x1

    .line 4063
    .local v2, "callType":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 4067
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 4065
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 4071
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 4088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallStateForWifiOffload() : skip, unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4090
    return-void

    .line 4080
    :pswitch_0
    const/4 v1, 0x1

    .line 4081
    .local v1, "wosCallState":I
    goto :goto_2

    .line 4077
    .end local v1    # "wosCallState":I
    :pswitch_1
    const/4 v1, 0x2

    .line 4078
    .restart local v1    # "wosCallState":I
    goto :goto_2

    .line 4085
    .end local v1    # "wosCallState":I
    :pswitch_2
    const/4 v1, 0x0

    .line 4086
    .restart local v1    # "wosCallState":I
    nop

    .line 4094
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v3, v4, v0, v2, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateCallState(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4097
    goto :goto_3

    .line 4095
    :catch_0
    move-exception v3

    .line 4096
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "updateCallStateForWifiOffload() : RemoteException in Wos.updateCallState()"

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4098
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallType(II)V
    .locals 4
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 4807
    const/16 v0, 0x15

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4841
    :cond_0
    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 4843
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4844
    const-string v0, "updateCallType() : mCallType = CALL_TYPE_VOICE"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_2

    .line 4809
    :cond_2
    :goto_0
    const-string v0, "updateCallType() : mCallType = CALL_TYPE_VT"

    const/4 v2, 0x4

    packed-switch p2, :pswitch_data_0

    .line 4830
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4831
    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_1

    .line 4825
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4826
    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4828
    goto :goto_1

    .line 4820
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4821
    const-string v0, "updateCallType() : mCallType = CALL_TYPE_VT_RX"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4823
    goto :goto_1

    .line 4815
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4816
    const-string v0, "updateCallType() : mCallType = CALL_TYPE_VT_TX"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4818
    goto :goto_1

    .line 4813
    :pswitch_3
    nop

    .line 4836
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4837
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "mediatek:wasVideoCall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 4838
    const-string v0, "updateCallType() : EXTRA_WAS_VIDEO_CALL = true"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4846
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallType() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4847
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIncomingVideoRingtone(II)V
    .locals 2
    .param p1, "callMode"    # I
    .param p2, "isIbt"    # I

    .line 3951
    const/16 v0, 0x15

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    .line 3952
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 3953
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 3954
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 3956
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 3959
    :goto_0
    return-void
.end method

.method private updateIsIbt([Ljava/lang/String;)I
    .locals 4
    .param p1, "callInfo"    # [Ljava/lang/String;

    .line 4553
    const/4 v0, 0x1

    .line 4555
    .local v0, "isIbt":I
    const/4 v1, 0x2

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 4556
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4558
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIsIbt() : isIbt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4560
    if-nez v0, :cond_1

    .line 4561
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_0

    .line 4564
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 4567
    :goto_0
    return v0
.end method

.method private updateOutgoingVideoRingtone(II)V
    .locals 3
    .param p1, "callMode"    # I
    .param p2, "isIbt"    # I

    .line 3916
    const-string v0, "persist.vendor.vilte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3918
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3919
    .local v0, "callType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOutgoingVideoRingtone(): callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3922
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3938
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, -0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 3931
    :cond_1
    :goto_0
    const/16 v1, 0x15

    if-ne p1, v1, :cond_2

    if-lt p2, v2, :cond_2

    .line 3932
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 3934
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 3942
    .end local v0    # "callType":I
    :cond_3
    :goto_1
    return-void
.end method

.method private updateRat(I)Z
    .locals 12
    .param p1, "callRat"    # I

    .line 4181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRat() : mcallRat is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callRat is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4184
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 4185
    return v2

    .line 4189
    :cond_0
    const/4 v0, 0x0

    .local v0, "isCrossSim":Z
    const/4 v3, 0x0

    .local v3, "isVowifi":Z
    const/4 v4, 0x0

    .local v4, "isNR":Z
    const/4 v5, 0x0

    .line 4190
    .local v5, "isLTE":Z
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    .line 4192
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 4196
    :cond_1
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/16 v9, 0x12

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/16 v10, 0xb

    if-ne v6, v10, :cond_2

    goto :goto_0

    .line 4201
    :cond_2
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/4 v10, 0x5

    if-ne v6, v10, :cond_3

    .line 4202
    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4203
    .local v6, "radioTech":Ljava/lang/String;
    const/4 v4, 0x1

    .line 4204
    iput v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    goto :goto_2

    .line 4205
    .end local v6    # "radioTech":Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    const/16 v11, 0xe

    if-ge v6, v10, :cond_4

    .line 4206
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4207
    .restart local v6    # "radioTech":Ljava/lang/String;
    const/4 v5, 0x1

    .line 4208
    iput v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    goto :goto_2

    .line 4209
    .end local v6    # "radioTech":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    if-ge v6, v7, :cond_5

    .line 4210
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4211
    .restart local v6    # "radioTech":Ljava/lang/String;
    const/4 v0, 0x1

    .line 4212
    const/4 v3, 0x1

    .line 4213
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    goto :goto_2

    .line 4215
    .end local v6    # "radioTech":Ljava/lang/String;
    :cond_5
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4216
    .restart local v6    # "radioTech":Ljava/lang/String;
    const/4 v5, 0x1

    .line 4217
    iput v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    goto :goto_2

    .line 4198
    .end local v6    # "radioTech":Ljava/lang/String;
    :cond_6
    :goto_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4199
    .restart local v6    # "radioTech":Ljava/lang/String;
    const/4 v3, 0x1

    .line 4200
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    goto :goto_2

    .line 4194
    .end local v6    # "radioTech":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4195
    .restart local v6    # "radioTech":Ljava/lang/String;
    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 4220
    :goto_2
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v9, "CallRadioTech"

    invoke-virtual {v7, v9, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 4221
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v9, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v7, v9, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 4224
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v7, :cond_a

    .line 4225
    if-eqz v3, :cond_8

    .line 4226
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    goto :goto_3

    .line 4227
    :cond_8
    if-eqz v4, :cond_9

    .line 4228
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    goto :goto_3

    .line 4229
    :cond_9
    if-eqz v5, :cond_a

    .line 4230
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v7, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    .line 4233
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRat() : new mCallRat is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", ratType is"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4235
    return v8
.end method

.method private updateShouldUpdateAddress()V
    .locals 4

    .line 4527
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP06:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4528
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4529
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP_EIOT:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4530
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 4534
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    .line 4536
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP130:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4537
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP120:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4538
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP132:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4539
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OPOi:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4540
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    .line 4542
    return-void
.end method

.method private updateShouldUseSipField()V
    .locals 2

    .line 4545
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP236:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4546
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShouldUseSipField() : mShouldUpdateAddressBySipField = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4550
    return-void
.end method

.method private updateVideoDirection()V
    .locals 3

    .line 3887
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    .line 3888
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3889
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    if-eqz v2, :cond_2

    .line 3890
    goto :goto_2

    .line 3891
    :cond_2
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoDirectionFromVideoState(I)I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 3893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoDirection() : mOverallPause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3896
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 6
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept() : original call Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accept as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1027
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v4, v2, v3}, Lcom/mediatek/ims/ImsService;->cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V

    .line 1030
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "dialstring"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "m"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "str"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept() : m = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", str = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1037
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v3, :cond_0

    .line 1038
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 1040
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1041
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v3, :cond_0

    .line 1042
    const-string v3, "callSessionTerminated !"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1043
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1047
    :cond_0
    return-void

    .line 1051
    .end local v0    # "m":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v1, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->accept()V

    goto :goto_1

    .line 1062
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1076
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "videoMode":I
    goto :goto_0

    .line 1070
    .end local v0    # "videoMode":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1071
    .restart local v0    # "videoMode":I
    goto :goto_0

    .line 1073
    .end local v0    # "videoMode":I
    :pswitch_2
    const/4 v0, 0x3

    .line 1074
    .restart local v0    # "videoMode":I
    goto :goto_0

    .line 1064
    .end local v0    # "videoMode":I
    :pswitch_3
    const/4 v0, 0x0

    .line 1065
    .restart local v0    # "videoMode":I
    goto :goto_0

    .line 1067
    .end local v0    # "videoMode":I
    :pswitch_4
    const/4 v0, 0x1

    .line 1068
    .restart local v0    # "videoMode":I
    nop

    .line 1079
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acceptVideoCall(II)V

    .line 1081
    .end local v0    # "videoMode":I
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public approveEccRedial(Z)V
    .locals 4
    .param p1, "isAprroved"    # Z

    .line 1414
    move v0, p1

    .line 1415
    .local v0, "approve":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->approveEccRedial(IILandroid/os/Message;)V

    .line 1416
    if-eqz p1, :cond_0

    .line 1417
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    .line 1419
    :cond_0
    return-void
.end method

.method public callTerminated()V
    .locals 5

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mCallNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 1581
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getRttEmcGuardTimerUtil(I)Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->startRttEmcGuardTimer()V

    .line 1584
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    .line 1590
    :cond_2
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 1591
    .local v0, "reportNotRingingMt":Z
    if-eqz v0, :cond_3

    .line 1592
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyNotRingingMtIfRequired()V

    .line 1594
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 1596
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-nez v4, :cond_4

    .line 1597
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1598
    :try_start_0
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 1599
    const-string v3, "callTerminated() :mIsNeedCacheTerminationEarly is true"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1601
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1604
    :cond_4
    :goto_0
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 1605
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v1, :cond_5

    .line 1606
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1607
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_1

    .line 1609
    :cond_5
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 1611
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_6

    .line 1612
    const-string v1, "callTerminated() : get disconnect cause directly from +ESIPCPI"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1614
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 1615
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInMergeProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1620
    const-string v1, "callTerminated() : No need notify disconnect when call is in merge progress"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_2

    .line 1623
    :cond_7
    const-string v1, "callTerminated() : get disconnect cause from AT+CEER"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1625
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1626
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 1630
    .end local v1    # "result":Landroid/os/Message;
    :goto_2
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    .line 1631
    return-void

    .line 1586
    .end local v0    # "reportNotRingingMt":Z
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mState is INVALID, return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1588
    return-void
.end method

.method public close()V
    .locals 6

    .line 727
    const-string v0, "close() : ImsCallSessionProxy is closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 730
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 731
    const-string v0, "close() : ImsCallSessionProxy already closed"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 732
    return-void

    .line 735
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 737
    const-string v0, "close() : close conference session if the session is closed before the merge process is complete"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 739
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    .line 740
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->closeConferenceSession()V

    .line 742
    :cond_1
    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 743
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/ims/ImsServiceCallTracker;->removeCallConnection(Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 745
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEconfResult(Landroid/os/Handler;)V

    .line 746
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallProgressIndicator(Landroid/os/Handler;)V

    .line 747
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V

    .line 748
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V

    .line 749
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEctResult(Landroid/os/Handler;)V

    .line 750
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V

    .line 752
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 753
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSpeechCodecInfo(Landroid/os/Handler;)V

    .line 754
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRedialEccInd(Landroid/os/Handler;)V

    .line 755
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSipHeaderInd(Landroid/os/Handler;)V

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallRatIndication(Landroid/os/Handler;)V

    .line 757
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallAdditionalInfo(Landroid/os/Handler;)V

    .line 758
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForDetailImsRegistrationInd(Landroid/os/Handler;)V

    .line 761
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttCapabilityIndicator(Landroid/os/Handler;)V

    .line 762
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttModifyResponse(Landroid/os/Handler;)V

    .line 763
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttTextReceive(Landroid/os/Handler;)V

    .line 764
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V

    .line 765
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttAudioIndicator(Landroid/os/Handler;)V

    .line 767
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 768
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVideoRingtoneInfo(Landroid/os/Handler;)V

    .line 769
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSrvccStateInd(Landroid/os/Handler;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 772
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 774
    .local v0, "vtProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_2

    .line 775
    const-string v2, "close() : Start VtProvider setUIMode"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 777
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetUIMode(I)V

    .line 778
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 779
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 782
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 783
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 784
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-eqz v1, :cond_3

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-interface {v1, v2}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "close() : RemoteException when unregisterForHandoverEvent"

    const/4 v4, 0x5

    invoke-direct {p0, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 795
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v1, :cond_4

    .line 796
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    invoke-virtual {v1}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->close()V

    .line 797
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 801
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/mediatek/ims/ImsService;->cleanMtkPendingMT(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V

    .line 802
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 803
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 804
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 805
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 807
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 809
    return-void
.end method

.method explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 1310
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 1311
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 1312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 1313
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1307
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 1

    .line 4462
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    if-nez v0, :cond_0

    .line 4463
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 4465
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 5415
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 5297
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v1

    .line 5298
    .local v1, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    move-object v4, p0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .end local p2    # "handler":Landroid/os/Handler;
    .end local p4    # "imsRILAdapter":Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .end local p5    # "imsService":Lcom/mediatek/ims/ImsService;
    .end local p6    # "phoneId":I
    .local v3, "handler":Landroid/os/Handler;
    .local v5, "imsRILAdapter":Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .local v6, "imsService":Lcom/mediatek/ims/ImsService;
    .local v7, "phoneId":I
    invoke-interface/range {v1 .. v7}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object p2

    return-object p2
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 5289
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 5290
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMtkCallSessionProxy()Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1

    .line 5281
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 838
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoCallProvider() : mVTProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1397
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 1400
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1165
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1166
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 1167
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1318
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1319
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1320
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1321
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-eqz v1, :cond_0

    .line 1322
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1331
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 1333
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    goto :goto_0

    .line 1334
    :catch_0
    move-exception v1

    .line 1335
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionInviteParticipantsRequestFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1340
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 3

    .line 1410
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "incoming_mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public merge()V
    .locals 12

    .line 1178
    const-string v0, "merge()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1179
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMaximumConferenceSize()I

    move-result v0

    .line 1180
    .local v0, "maximumConferenceSize":I
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isNeedBlockMergeAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    if-ne v2, v0, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1182
    return-void

    .line 1184
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    .line 1185
    .local v2, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v3, 0x0

    .line 1187
    .local v3, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP165:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1188
    invoke-static {v4, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP152:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1189
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP117:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1190
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP131:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1191
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP125:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1192
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP136_Peru:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1193
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1194
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 1197
    .local v4, "needSwapConfToFg":Z
    :goto_1
    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP16:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1198
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1199
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP147:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1200
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v5, v6

    .line 1203
    .local v5, "needSwapVtConfToFg":Z
    :cond_4
    const/4 v7, 0x5

    if-nez v2, :cond_5

    .line 1204
    const-string v1, "merge() : can\'t find this call callInfo"

    invoke-direct {p0, v1, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1205
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1206
    return-void

    .line 1209
    :cond_5
    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_6

    .line 1210
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v3

    goto :goto_2

    .line 1211
    :cond_6
    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_7

    .line 1212
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v3

    .line 1215
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 1216
    const-string v1, "merge() : can\'t find another call\'s callInfo"

    invoke-direct {p0, v1, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1217
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1218
    return-void

    .line 1221
    :cond_8
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v7

    if-ne v7, v6, :cond_9

    .line 1222
    move v4, v5

    .line 1224
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge() : merge command- my call: conference type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " call status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " beMergedCall: conference type="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needSwapConfToFg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1229
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 1230
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1231
    iget-object v7, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 1232
    iget-object v7, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1234
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 1236
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v7

    .line 1238
    .local v7, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget-boolean v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-nez v8, :cond_a

    iget-boolean v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-nez v8, :cond_a

    .line 1240
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xcd

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1242
    .local v1, "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->merge(Landroid/os/Message;)V

    .line 1243
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 1244
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 1246
    iget-object v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    iget-object v10, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/mediatek/ims/DefaultConferenceHandler;->firstMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1248
    .end local v1    # "result":Landroid/os/Message;
    :cond_a
    iget-boolean v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    const/16 v9, 0xce

    if-ne v8, v6, :cond_b

    iget-boolean v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-ne v8, v6, :cond_b

    .line 1250
    const-string v6, "merge() : conference call merge conference call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1251
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1252
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    .line 1254
    return-void

    .line 1257
    .end local v1    # "result":Landroid/os/Message;
    :cond_b
    nop

    .line 1258
    iget-boolean v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v8, :cond_c

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 1257
    :goto_3
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 1259
    const-string v8, "merge() : active conference call merge background normal call"

    if-nez v4, :cond_e

    .line 1261
    iget-boolean v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v6, :cond_d

    .line 1262
    invoke-direct {p0, v8, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1263
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1264
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 1267
    .end local v1    # "result":Landroid/os/Message;
    :cond_d
    const-string v6, "merge() : active normal call merge background conference call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1268
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1269
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1270
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1269
    invoke-interface {v6, v8, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 1275
    .end local v1    # "result":Landroid/os/Message;
    :cond_e
    iget-boolean v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v10, :cond_f

    iget-object v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v11, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v10, v11, :cond_f

    .line 1276
    invoke-direct {p0, v8, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1277
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1278
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 1280
    .end local v1    # "result":Landroid/os/Message;
    :cond_f
    iget-boolean v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v8, :cond_10

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v8, v10, :cond_10

    .line 1283
    const-string v6, "merge() : beMergedCall in foreground merge bg normal call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1284
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1285
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1286
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1285
    invoke-interface {v6, v8, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 1289
    .end local v1    # "result":Landroid/os/Message;
    :cond_10
    const-string v8, "merge() : swapping before merge"

    invoke-direct {p0, v8, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1290
    iput-boolean v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 1291
    iput-boolean v6, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 1292
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd2

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1293
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->swap(Landroid/os/Message;)V

    .line 1297
    :goto_4
    return-void
.end method

.method public onAddParticipantComplete()V
    .locals 2

    .line 4491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddParticipantComplete(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 4493
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 4495
    :cond_0
    return-void
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1085
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1086
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHangupCause(I)I

    move-result v0

    .line 1089
    .local v0, "cause":I
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 1091
    if-gtz v0, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->reject(I)V

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->reject(II)V

    .line 1096
    .end local v0    # "cause":I
    :goto_0
    goto :goto_1

    .line 1097
    :cond_1
    const-string v0, "reject() : Reject Call fail since there is no call ID. Abnormal Case"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1099
    :goto_1
    return-void
.end method

.method public removeLastParticipant()V
    .locals 6

    .line 5391
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 5392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLastParticipant() : fail since no call ID CallID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5394
    return-void

    .line 5397
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5398
    .local v0, "size":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 5400
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5401
    .local v1, "addr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5402
    .local v2, "participantUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5403
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 5406
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 5407
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeLastParticipant() : Participant number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5409
    const-string v1, "removeLastParticipant() : terminate"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5410
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 5412
    :goto_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1345
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1346
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1347
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1348
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-eqz v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v1, v1, v2

    .line 1350
    .local v1, "addr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1351
    .local v2, "participantUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 1353
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryRemoveParticipant(Ljava/lang/String;)V

    .line 1354
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    goto :goto_0

    .line 1355
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1359
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 1361
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    goto :goto_0

    .line 1362
    :catch_0
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionRemoveParticipantsRequestFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1368
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1171
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1172
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 1173
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1372
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 1373
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1374
    .local v0, "local_result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1375
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 10
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1436
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1441
    .local v0, "callId":I
    if-nez p1, :cond_1

    return-void

    .line 1444
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1445
    .local v1, "length":I
    const/4 v2, 0x0

    .line 1446
    .local v2, "encodeText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1448
    .local v3, "utf8_len":I
    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1449
    .local v4, "bytes_utf8":[B
    if-eqz v4, :cond_2

    array-length v5, v4

    move v3, v5

    .line 1450
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    .local v5, "sbuild":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 1452
    new-instance v7, Ljava/lang/Byte;

    aget-byte v8, v4, v6

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 1453
    .local v7, "b":Ljava/lang/Byte;
    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v8

    .line 1454
    .local v8, "ch":I
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHex(I)Ljava/lang/String;

    move-result-object v9

    .line 1455
    .local v9, "bb":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    nop

    .end local v7    # "b":Ljava/lang/Byte;
    .end local v8    # "ch":I
    .end local v9    # "bb":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1457
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendRttMessage rttMessage= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " len ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1459
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1460
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encodeText.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    .line 1461
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1458
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    .end local v4    # "bytes_utf8":[B
    .end local v5    # "sbuild":Ljava/lang/StringBuilder;
    nop

    .line 1467
    if-eqz v2, :cond_4

    if-lez v3, :cond_4

    .line 1468
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v2, v3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttText(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1470
    :cond_4
    return-void

    .line 1463
    :catch_0
    move-exception v4

    .line 1464
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "sendRttMessage: UnSupportedEncodingException"

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1465
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRttModifyRequest() : to = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1479
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1484
    .local v0, "callId":I
    if-nez p1, :cond_1

    .line 1485
    const-string v1, "sendRttModifyRequest invalid ImsCallProfile"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1487
    return-void

    .line 1489
    :cond_1
    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRttModifyRequest upgrade mCallId= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1492
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0, v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 1493
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    goto :goto_0

    .line 1495
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRttModifyRequest downgrade mCallId= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1497
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 1499
    :goto_0
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 4
    .param p1, "response"    # Z

    .line 1507
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1511
    .local v0, "callId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1513
    xor-int/lit8 v1, p1, 0x1

    .line 1514
    .local v1, "intResponse":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttModifyRequestResponse(IILandroid/os/Message;)V

    .line 1515
    if-eqz p1, :cond_1

    .line 1516
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 1518
    :cond_1
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xd5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1390
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 1391
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 5382
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsCallMode:I

    .line 5383
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    .line 5385
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCallMode(ILandroid/os/Message;)V

    .line 5387
    :cond_0
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 848
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 850
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    .line 853
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 854
    const-string v1, "setListener(), session terminated, notify terminated again."

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 858
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 859
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0xe6

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 861
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 863
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 865
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    if-eqz v1, :cond_3

    .line 868
    const-string v1, "setListener(), has unhandled ImsConference CEP"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 869
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 872
    :cond_2
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 880
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    const/16 v4, 0xe2

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 884
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 885
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 887
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 891
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    if-eqz v1, :cond_6

    .line 892
    const-string v1, "setListener(), session terminated and no listener, close it."

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 894
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 897
    :cond_6
    :goto_1
    return-void
.end method

.method public setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 5285
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 5286
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 901
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 902
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 10
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 907
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 908
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 909
    iput-boolean v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 910
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 911
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddress()V

    .line 912
    return-void

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5, v3, v4}, Lcom/mediatek/ims/ImsService;->cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V

    .line 919
    const-string v1, "oir"

    invoke-virtual {p2, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 920
    .local v1, "clirMode":I
    iget v3, p2, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 921
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 923
    .local v8, "subId":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-nez v3, :cond_4

    .line 925
    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 926
    invoke-static {v3, v6}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    .line 927
    .local v3, "isNAPriorityClirSupported":Z
    sget-object v6, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v6, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v6

    xor-int/2addr v6, v7

    .line 929
    .local v6, "ignoreClirWhenEcc":Z
    if-eqz v3, :cond_2

    if-ne v1, v7, :cond_2

    .line 931
    const-string v9, "*82"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-boolean v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    .line 934
    :cond_3
    const-string v9, "start() : Prior CLIR supported, *82 or ECC is higher priority than CLIR invocation."

    invoke-direct {p0, v9, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 936
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 940
    .end local v3    # "isNAPriorityClirSupported":Z
    .end local v6    # "ignoreClirWhenEcc":Z
    :cond_4
    move v3, v1

    .end local v1    # "clirMode":I
    .local v3, "clirMode":I
    :goto_1
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isSpecialEccNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 942
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isImsEccSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needHangupOtherCallWhenEccDialing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 944
    :cond_5
    const-string v1, "start() : Hangup all if IMS Ecc not supported"

    invoke-direct {p0, v1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 950
    :cond_6
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isValidVtDialString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 952
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->rejectDial()V

    .line 953
    return-void

    .line 958
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 959
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->shouldProcessSelfActivation(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 960
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    iget-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-virtual {v1, p1, p2, v4}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V

    .line 962
    iput-boolean v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 963
    return-void

    .line 967
    :cond_8
    const-string v1, "dialstring"

    invoke-virtual {p2, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 969
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd5

    invoke-virtual {v1, v4, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 970
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 971
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 972
    return-void

    .line 977
    .end local v1    # "msg":Landroid/os/Message;
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needTurnOnVolteBeforeE911()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 978
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->tryTurnOnVolteForE911(Z)V

    .line 983
    :cond_a
    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setRttModeForDial(Z)V

    .line 985
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 986
    .local v6, "response":Landroid/os/Message;
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 987
    .local v1, "useEmergencyDial":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->useNormalDialForEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 988
    const/4 v1, 0x0

    move v4, v1

    goto :goto_2

    .line 987
    :cond_b
    move v4, v1

    .line 990
    .end local v1    # "useEmergencyDial":Z
    .local v4, "useEmergencyDial":Z
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP204:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 991
    invoke-static {v1, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 992
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 993
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, "vmNumber":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 995
    move-object v0, v5

    move-object v1, v0

    .end local p1    # "callee":Ljava/lang/String;
    .local v0, "callee":Ljava/lang/String;
    goto :goto_3

    .line 998
    .end local v0    # "callee":Ljava/lang/String;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "vmNumber":Ljava/lang/String;
    .restart local p1    # "callee":Ljava/lang/String;
    :cond_c
    move-object v1, p1

    .end local p1    # "callee":Ljava/lang/String;
    .local v1, "callee":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v5

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V

    .line 1000
    iput-boolean v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1001
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 1002
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddress()V

    .line 1003
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1008
    const-string v0, "oir"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v4

    .line 1009
    .local v4, "clirMode":I
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1011
    .local v7, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v5

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object v3, p1

    .end local p1    # "participants":[Ljava/lang/String;
    .local v3, "participants":[Ljava/lang/String;
    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startConference([Ljava/lang/String;IZILandroid/os/Message;)V

    .line 1014
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1015
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 1016
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 1017
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1379
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startDtmf(CLandroid/os/Message;)V

    .line 1380
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1385
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 1118
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleHangup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "dialstring"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1123
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->cancelPendingUssi(Landroid/os/Message;)V

    .line 1124
    return-void

    .line 1128
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1130
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHangupCause(I)I

    move-result v0

    .line 1131
    .local v0, "cause":I
    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v2, :cond_3

    .line 1132
    if-gtz v0, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->forceHangup(I)V

    goto :goto_1

    .line 1135
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->forceHangup(II)V

    goto :goto_1

    .line 1138
    :cond_3
    if-gtz v0, :cond_4

    .line 1139
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    goto :goto_0

    .line 1141
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(II)V

    .line 1143
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v2, :cond_5

    .line 1144
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    .line 1150
    :cond_5
    :goto_1
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 1151
    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 1152
    const/4 v1, 0x7

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 1153
    .end local v0    # "cause":I
    goto :goto_2

    .line 1154
    :cond_6
    const-string v0, "terminate() : Terminate Call fail since there is no call ID. Abnormal Case"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1155
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v0, :cond_7

    .line 1156
    const-string v0, "terminate() : Pending M0, wait for assign call id"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1157
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    .line 1158
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    .line 1161
    :cond_7
    :goto_2
    return-void
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 2
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 1111
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1112
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 1113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 1114
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 1103
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1104
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1105
    .local v2, "type":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, p1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1106
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 1107
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1302
    return-void
.end method

.method public videoScreenOperation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;

    .line 5419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoScreenOperation(): CallID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5421
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 5422
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5424
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5425
    :cond_0
    return-void

    .line 5427
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5428
    .local v0, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5429
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5430
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5431
    if-ne p1, v1, :cond_2

    .line 5433
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5435
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5437
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 5438
    return-void
.end method
