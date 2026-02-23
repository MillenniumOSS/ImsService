.class public abstract Lcom/mediatek/ims/ril/ImsBaseCommands;
.super Ljava/lang/Object;
.source "ImsBaseCommands.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mBearerInitRegistrants:Landroid/os/RegistrantList;

.field protected mBearerStateRegistrants:Landroid/os/RegistrantList;

.field protected mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;

.field protected mContext:Landroid/content/Context;

.field protected mEconfResultRegistrants:Landroid/os/RegistrantList;

.field protected mEctResultRegistrants:Landroid/os/RegistrantList;

.field protected mEiregIndRegistrants:Landroid/os/RegistrantList;

.field protected mEnterECBMRegistrants:Landroid/os/RegistrantList;

.field protected mEregrtIndRegistrants:Landroid/os/RegistrantList;

.field protected mExitECBMRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsConfInfoRegistrants:Landroid/os/RegistrantList;

.field protected mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

.field protected mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDialogRegistrant:Landroid/os/RegistrantList;

.field protected mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEccSupportRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

.field protected mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

.field protected mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

.field protected mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

.field protected mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

.field protected mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

.field protected mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrant:Landroid/os/Registrant;

.field protected mNoECBMRegistrants:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneId:I

.field protected mRTPInfoRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

.field protected mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

.field protected mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

.field protected mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;

.field protected mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

.field protected mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

.field protected mSsacIndRegistrants:Landroid/os/RegistrantList;

.field protected mState:I

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected mUSSIRegistrants:Landroid/os/RegistrantList;

.field protected mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

.field protected mVolteSettingRegistrants:Landroid/os/RegistrantList;

.field protected mVolteSettingValue:Ljava/lang/Object;

.field protected mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

.field protected mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

.field protected mXuiRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneid"    # I

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    .line 95
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    .line 110
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    .line 115
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    .line 122
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    .line 123
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    .line 126
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    .line 129
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    .line 132
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 135
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 138
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    .line 146
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    .line 149
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    .line 155
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    .line 158
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 164
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    .line 167
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    .line 170
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    .line 173
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 176
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    .line 182
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

    .line 185
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    .line 188
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    .line 191
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    .line 194
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    .line 197
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    .line 200
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    .line 203
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

    .line 206
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

    .line 678
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    .line 699
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    .line 751
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    .line 897
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    .line 214
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mContext:Landroid/content/Context;

    .line 215
    iput p2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mPhoneId:I

    .line 216
    return-void
.end method


# virtual methods
.method protected notifyRadioStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 978
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    .line 919
    return-void
.end method

.method public registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 546
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 547
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 548
    return-void
.end method

.method public registerForBearerState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 456
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 458
    return-void
.end method

.method public registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 231
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 233
    return-void
.end method

.method public registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 264
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 266
    return-void
.end method

.method public registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 397
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 400
    return-void
.end method

.method public registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 330
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 333
    return-void
.end method

.method public registerForCallRatIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 242
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 244
    return-void
.end method

.method public registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1185
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1186
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1187
    return-void
.end method

.method public registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 253
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 255
    return-void
.end method

.method public registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 386
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 388
    return-void
.end method

.method public registerForEregrtInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1224
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1225
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1226
    return-void
.end method

.method public registerForGetProvisionComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 375
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 377
    return-void
.end method

.method public registerForImsCfgConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 808
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 810
    return-void
.end method

.method public registerForImsCfgConfigLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 827
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 828
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 829
    return-void
.end method

.method public registerForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 770
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 771
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 772
    return-void
.end method

.method public registerForImsCfgFeatureChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 789
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 790
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 791
    return-void
.end method

.method public registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 719
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 720
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 721
    return-void
.end method

.method public registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 467
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 468
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 469
    return-void
.end method

.method public registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 664
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 665
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 666
    return-void
.end method

.method public registerForImsDialog(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 754
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 756
    return-void
.end method

.method public registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 308
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 310
    return-void
.end method

.method public registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 286
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 288
    return-void
.end method

.method public registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 690
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 692
    return-void
.end method

.method public registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 297
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 299
    return-void
.end method

.method public registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 275
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 276
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 277
    return-void
.end method

.method public registerForImsEventPackage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 511
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 512
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 513
    return-void
.end method

.method public registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 420
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 422
    return-void
.end method

.method public registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 908
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 909
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 910
    return-void
.end method

.method public registerForImsRegFlagInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 445
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 447
    return-void
.end method

.method public registerForImsRegStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1127
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1128
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1129
    return-void
.end method

.method public registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 319
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 321
    return-void
.end method

.method public registerForLteMsgWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 738
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 740
    return-void
.end method

.method public registerForMDInternetUsage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1262
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1263
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1264
    return-void
.end method

.method public registerForMtSipInviteInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1282
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1283
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1284
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 570
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 572
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 575
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 576
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 578
    :cond_0
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 600
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 605
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-nez v2, :cond_0

    .line 606
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 608
    :cond_0
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 632
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 634
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 637
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 638
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 640
    :cond_0
    monitor-exit v1

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 342
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 344
    return-void
.end method

.method public registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 353
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 355
    return-void
.end method

.method public registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 364
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 366
    return-void
.end method

.method public registerForRttAudioIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1086
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1087
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1088
    return-void
.end method

.method public registerForRttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 990
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 992
    return-void
.end method

.method public registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1062
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1063
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1064
    return-void
.end method

.method public registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1014
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1015
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1016
    return-void
.end method

.method public registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1038
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1039
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1040
    return-void
.end method

.method public registerForSipHeaderInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1166
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1167
    return-void
.end method

.method public registerForSipRegInfoInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1146
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1147
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1148
    return-void
.end method

.method public registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 702
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 703
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 704
    return-void
.end method

.method public registerForSrvccStateInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1303
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1304
    return-void
.end method

.method public registerForSsacStateInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1205
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1206
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1207
    return-void
.end method

.method public registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 409
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 410
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 411
    return-void
.end method

.method public registerForVideoRingtoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1243
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1244
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1245
    return-void
.end method

.method public registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 431
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 432
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 433
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 434
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 436
    :cond_0
    return-void
.end method

.method public registerForVolteSubscription(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 489
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 490
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 491
    return-void
.end method

.method public registerForVopsStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1108
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1109
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1110
    return-void
.end method

.method public registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 478
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 480
    return-void
.end method

.method public setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 220
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 222
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 887
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 888
    return-void
.end method

.method public setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 872
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    .line 873
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 851
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 852
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 500
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 501
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 502
    return-void
.end method

.method public setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 517
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 518
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 519
    return-void
.end method

.method protected setRadioState(IZ)V
    .locals 5
    .param p1, "newState"    # I
    .param p2, "forceNotifyRegistrants"    # Z

    .line 932
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    .line 934
    .local v1, "oldState":I
    iput p1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    .line 936
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 938
    const-string v2, "ImsBaseCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no state transition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    monitor-exit v0

    return-void

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 944
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 946
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 949
    :cond_1
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-ne v2, v3, :cond_2

    if-eq v1, v3, :cond_2

    .line 951
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 954
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    if-eq v1, v4, :cond_3

    .line 956
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 959
    :cond_3
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-ne v2, v3, :cond_5

    :cond_4
    if-ne v1, v4, :cond_5

    .line 962
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 965
    :cond_5
    iget v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:I

    if-nez v2, :cond_6

    .line 966
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 968
    :cond_6
    monitor-exit v0

    .line 969
    return-void

    .line 968
    .end local v1    # "oldState":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 891
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 895
    :cond_0
    return-void
.end method

.method public unSetOnNewSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    .line 884
    :cond_0
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 859
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 863
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 506
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 507
    return-void
.end method

.method public unSetOnUSSI(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 523
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 524
    return-void
.end method

.method public unregisterForBearerInit(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 558
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 559
    return-void
.end method

.method public unregisterForBearerState(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 462
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 463
    return-void
.end method

.method public unregisterForCallAdditionalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 238
    return-void
.end method

.method public unregisterForCallInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 271
    return-void
.end method

.method public unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 404
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 405
    return-void
.end method

.method public unregisterForCallProgressIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 338
    return-void
.end method

.method public unregisterForCallRatIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 249
    return-void
.end method

.method public unregisterForDetailImsRegistrationInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1195
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1196
    return-void
.end method

.method public unregisterForEconfResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 260
    return-void
.end method

.method public unregisterForEctResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 392
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 393
    return-void
.end method

.method public unregisterForEregrtInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1233
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1234
    return-void
.end method

.method public unregisterForGetProvisionComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 381
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 382
    return-void
.end method

.method public unregisterForImsCfgConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 817
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 818
    return-void
.end method

.method public unregisterForImsCfgConfigLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 836
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 837
    return-void
.end method

.method public unregisterForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 779
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 780
    return-void
.end method

.method public unregisterForImsCfgFeatureChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 798
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 799
    return-void
.end method

.method public unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 728
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 729
    return-void
.end method

.method public unregisterForImsDataInfoNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 473
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 474
    return-void
.end method

.method public unregisterForImsDeregisterComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 674
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 675
    return-void
.end method

.method public unregisterForImsDialog(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 760
    return-void
.end method

.method public unregisterForImsDisableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 314
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 315
    return-void
.end method

.method public unregisterForImsDisableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 293
    return-void
.end method

.method public unregisterForImsEccSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 695
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 696
    return-void
.end method

.method public unregisterForImsEnableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 303
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 304
    return-void
.end method

.method public unregisterForImsEnableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 282
    return-void
.end method

.method public unregisterForImsEventPackage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 534
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 535
    return-void
.end method

.method public unregisterForImsRTPInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 426
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 427
    return-void
.end method

.method public unregisterForImsRedialEccInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 913
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 914
    return-void
.end method

.method public unregisterForImsRegFlagInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 451
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public unregisterForImsRegStatusInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1136
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1137
    return-void
.end method

.method public unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 325
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 326
    return-void
.end method

.method public unregisterForLteMsgWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 747
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 748
    return-void
.end method

.method public unregisterForMDInternetUsage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1271
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1272
    return-void
.end method

.method public unregisterForMtSipInviteInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1292
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1293
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 587
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 589
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOff(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 619
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 621
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 653
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOnEnterECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 348
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public unregisterForOnExitECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 359
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 360
    return-void
.end method

.method public unregisterForOnNoECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 370
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 371
    return-void
.end method

.method public unregisterForRttAudioIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1098
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1099
    return-void
.end method

.method public unregisterForRttCapabilityIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1002
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1003
    return-void
.end method

.method public unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1074
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1075
    return-void
.end method

.method public unregisterForRttModifyResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1026
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1027
    return-void
.end method

.method public unregisterForRttTextReceive(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1050
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1051
    return-void
.end method

.method public unregisterForSipHeaderInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1174
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1175
    return-void
.end method

.method public unregisterForSipRegInfoInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1155
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1156
    return-void
.end method

.method public unregisterForSpeechCodecInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 708
    return-void
.end method

.method public unregisterForSrvccStateInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1312
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1313
    return-void
.end method

.method public unregisterForSsacStateInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1214
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1215
    return-void
.end method

.method public unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 415
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 416
    return-void
.end method

.method public unregisterForVideoRingtoneInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1252
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1253
    return-void
.end method

.method public unregisterForVolteSettingChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 441
    return-void
.end method

.method public unregisterForVolteSubscription(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 495
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 496
    return-void
.end method

.method public unregisterForVopsStatusInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1117
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1118
    return-void
.end method

.method public unregisterForXuiInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 485
    return-void
.end method

.method public unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 227
    return-void
.end method
