.class public Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExVoiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExVoiceProxy"


# instance fields
.field private volatile mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 90
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-object v0
.end method

.method public getColp(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColp(II)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 144
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColp(I)V

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method public getColr(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColr(II)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 160
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColr(I)V

    .line 162
    :cond_2
    :goto_0
    return-void
.end method

.method public hangupAll(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupAll(II)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 374
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupAll(I)V

    .line 376
    :cond_2
    :goto_0
    return-void
.end method

.method public hangupWithReason(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupWithReason(IIII)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 337
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupWithReason(III)V

    .line 339
    :cond_2
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryCallForwardInTimeSlotStatus(III)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const-string v0, ""

    .line 175
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 176
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 178
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 180
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 182
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 183
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 184
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 185
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 186
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 187
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 188
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v3, v5}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 195
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 196
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 197
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 198
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 199
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 200
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 201
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 203
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 204
    invoke-interface {v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    goto :goto_1

    .line 192
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :cond_2
    :goto_0
    nop

    .line 206
    :goto_1
    return-void
.end method

.method public resetSuppServ(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->resetSuppServ(II)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 128
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->resetSuppServ(I)V

    .line 130
    :cond_2
    :goto_0
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 112
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 114
    :cond_2
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "voice"    # Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 50
    const-string v0, "MtkRadioExVoiceProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 51
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mIsAidl:Z

    .line 55
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getInterfaceVersion()I

    move-result v1

    .line 56
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 62
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    goto :goto_0

    .line 58
    :pswitch_0
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 59
    .local v2, "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    nop

    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIDL version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", halVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "cfReason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "timeSeconds"    # I
    .param p7, "timeSlot"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const-string v0, ""

    .line 223
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 226
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p7, :cond_1

    array-length v2, p7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p7

    if-ge v2, v3, :cond_1

    .line 228
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p7, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 229
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 232
    if-nez v2, :cond_0

    .line 233
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 235
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 244
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->status:I

    .line 245
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 246
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 247
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 248
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 249
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 250
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 251
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v2, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_2

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 258
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    .line 259
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 260
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 261
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 262
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 263
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 264
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 265
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 268
    invoke-interface {v3, p1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    goto :goto_3

    .line 255
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :cond_4
    :goto_2
    nop

    .line 270
    :goto_3
    return-void
.end method

.method public setCallIndication(IIIII)V
    .locals 14
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "callId"    # I
    .param p4, "seqNumber"    # I
    .param p5, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v7, 0x1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallIndication(IIIIII)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v8, v0

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 359
    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallIndication(IIIII)V

    .line 361
    :cond_2
    :goto_0
    return-void
.end method

.method public setClip(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setClip(III)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 285
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setClip(II)V

    .line 287
    :cond_2
    :goto_0
    return-void
.end method

.method public setColp(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColp(III)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 302
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColp(II)V

    .line 304
    :cond_2
    :goto_0
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColr(III)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 319
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColr(II)V

    .line 321
    :cond_2
    :goto_0
    return-void
.end method
