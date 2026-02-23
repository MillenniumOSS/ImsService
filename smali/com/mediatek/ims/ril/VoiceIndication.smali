.class public Lcom/mediatek/ims/ril/VoiceIndication;
.super Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.source "VoiceIndication.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 37
    return-void
.end method


# virtual methods
.method public callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 49
    return-void
.end method

.method public callStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 56
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/voice/CdmaCallWaiting;

    .line 65
    return-void
.end method

.method public cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "records"    # [Landroid/hardware/radio/voice/CdmaInformationRecord;

    .line 74
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 82
    return-void
.end method

.method public currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "emergencyNumberList"    # [Landroid/hardware/radio/voice/EmergencyNumber;

    .line 92
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 100
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 107
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 122
    :cond_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 194
    const-string v0, "576f05d082e9269bcf773b0c9b9112d507ab4b9a"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 199
    const/4 v0, 0x4

    return v0
.end method

.method public indicateRingbackTone(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "start"    # Z

    .line 130
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ss"    # Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    .line 140
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ussdModeType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 150
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 157
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 166
    filled-new-array {p2}, [I

    move-result-object v0

    .line 168
    .local v0, "response":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0x40f

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 170
    iget-object v1, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSrvccStateIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 174
    :cond_0
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "alpha"    # Ljava/lang/String;

    .line 182
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "timeout"    # J

    .line 190
    return-void
.end method
