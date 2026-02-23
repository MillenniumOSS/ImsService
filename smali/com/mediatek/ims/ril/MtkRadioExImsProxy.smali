.class public Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExImsProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExImsProxy"


# instance fields
.field private volatile mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-void
.end method

.method static synthetic lambda$vtEmergencyDial$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 630
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsEx(IZI)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsAck;-><init>()V

    .line 167
    .local v0, "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    iput-boolean p2, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->errorClass:Z

    .line 168
    iput p3, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->smsCauseCode:I

    .line 169
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsAck;I)V

    .line 171
    .end local v0    # "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 174
    .local v0, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v1, p2, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 175
    iput p3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 176
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 178
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 181
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :cond_2
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZI)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingGsmSmsEx(IZII)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 207
    :cond_2
    :goto_0
    return-void
.end method

.method public cancelUssi(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->cancelUssi(II)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 434
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->cancelUssi(I)V

    .line 436
    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 98
    return-void
.end method

.method public conferenceDial(I[Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "participants"    # [Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;-><init>()V

    .line 659
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->clir:I

    .line 660
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->isVideoCall:Z

    .line 661
    iput-object p2, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->dialNumbers:[Ljava/lang/String;

    .line 663
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;I)V

    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    goto :goto_1

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 668
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->clir:I

    .line 669
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->isVideoCall:Z

    .line 670
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 671
    .local v3, "dialNumber":Ljava/lang/String;
    iget-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v3    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 679
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    goto :goto_2

    .line 665
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    :cond_3
    :goto_1
    nop

    .line 681
    :goto_2
    return-void
.end method

.method public controlCall(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlCall(IIII)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 699
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlCall(III)V

    .line 701
    :cond_2
    :goto_0
    return-void
.end method

.method public controlImsConferenceCallMember(IIILjava/lang/String;I)V
    .locals 14
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "confCallId"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlImsConferenceCallMember(IIILjava/lang/String;II)V

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v8, v0

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 721
    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 723
    :cond_2
    :goto_0
    return-void
.end method

.method public dialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->dialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 740
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    .line 742
    :cond_2
    :goto_0
    return-void
.end method

.method public eccRedialApprove(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "approve"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->eccRedialApprove(IIII)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 760
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->eccRedialApprove(III)V

    .line 762
    :cond_2
    :goto_0
    return-void
.end method

.method public forceReleaseCall(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->forceReleaseCall(III)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 777
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->forceReleaseCall(II)V

    .line 779
    :cond_2
    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-object v0
.end method

.method public getBarringCalls(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getBarringCalls(III)V

    .line 500
    :cond_1
    return-void
.end method

.method public getImsCfgFeatureValue(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgFeatureValue(IIII)V

    goto :goto_0

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 936
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    .line 938
    :cond_2
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgProvisionValue(III)V

    goto :goto_0

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 955
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    .line 957
    :cond_2
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgResourceCapValue(III)V

    goto :goto_0

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 974
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    .line 976
    :cond_2
    :goto_0
    return-void
.end method

.method public getVoiceDomainPreference(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getVoiceDomainPreference(II)V

    goto :goto_0

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 995
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getVoiceDomainPreference(I)V

    .line 997
    :cond_2
    :goto_0
    return-void
.end method

.method public getXcapStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getXcapStatus(II)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 449
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getXcapStatus(I)V

    .line 451
    :cond_2
    :goto_0
    return-void
.end method

.method public imsBearerStateConfirm(IIII)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "serial":I
    .end local p2    # "aid":I
    .end local p3    # "action":I
    .end local p4    # "status":I
    .local v2, "serial":I
    .local v3, "aid":I
    .local v4, "action":I
    .local v5, "status":I
    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsBearerStateConfirm(IIIII)V

    goto :goto_0

    .line 124
    .end local v2    # "serial":I
    .end local v3    # "aid":I
    .end local v4    # "action":I
    .end local v5    # "status":I
    .restart local p1    # "serial":I
    .restart local p2    # "aid":I
    .restart local p3    # "action":I
    .restart local p4    # "status":I
    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "serial":I
    .end local p2    # "aid":I
    .end local p3    # "action":I
    .end local p4    # "status":I
    .restart local v2    # "serial":I
    .restart local v3    # "aid":I
    .restart local v4    # "action":I
    .restart local v5    # "status":I
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object p2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast p1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 126
    invoke-interface {p1, v2, v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method public imsEctCommand(ILjava/lang/String;I)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsEctCommand(ILjava/lang/String;II)V

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 797
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    .line 799
    :cond_2
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pullCall(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->pullCall(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 817
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    .line 819
    :cond_2
    :goto_0
    return-void
.end method

.method public querySsacStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->querySsacStatus(II)V

    goto :goto_0

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1154
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->querySsacStatus(I)V

    .line 1156
    :cond_2
    :goto_0
    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->queryVopsStatus(II)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 398
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryVopsStatus(I)V

    .line 400
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

    .line 1166
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1168
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1172
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 1174
    :cond_2
    :goto_0
    return-void
.end method

.method public rttModifyRequestResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->rttModifyRequestResponse(IIII)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 294
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    .line 296
    :cond_2
    :goto_0
    return-void
.end method

.method public sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smscPdu"    # Ljava/lang/String;
    .param p3, "gsmPdu"    # Ljava/lang/String;
    .param p4, "cdmaPdu"    # [B
    .param p5, "retry"    # Z
    .param p6, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 231
    new-instance v0, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/ImsSmsMessage;-><init>()V

    .line 233
    .local v0, "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 234
    iput v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    goto :goto_0

    .line 235
    :cond_1
    if-eqz p4, :cond_4

    .line 236
    iput v1, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    .line 241
    :goto_0
    iput-boolean p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->retry:Z

    .line 242
    iput p6, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->messageRef:I

    .line 243
    if-eqz p3, :cond_2

    .line 244
    new-array v3, v2, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 245
    new-array v3, v1, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 246
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 248
    :cond_2
    if-eqz p4, :cond_3

    .line 249
    new-array v3, v1, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 250
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 251
    new-array v2, v2, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    iput-object v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendImsSmsEx(ILandroid/hardware/radio/messaging/ImsSmsMessage;I)V

    .line 254
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    goto :goto_1

    .line 238
    .restart local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_4
    return-void

    .line 255
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_5
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 257
    .local v0, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    iput-boolean p5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 258
    iput p6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 259
    if-eqz p3, :cond_6

    .line 260
    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 261
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_6
    if-eqz p4, :cond_7

    .line 264
    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 265
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 268
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 269
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 272
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :cond_8
    :goto_1
    return-void
.end method

.method public sendRttModifyRequest(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttModifyRequest(IIII)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 314
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    .line 316
    :cond_2
    :goto_0
    return-void
.end method

.method public sendRttText(IIILjava/lang/String;)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "serial":I
    .end local p2    # "callId":I
    .end local p3    # "lenOfString":I
    .end local p4    # "text":Ljava/lang/String;
    .local v2, "serial":I
    .local v3, "callId":I
    .local v4, "lenOfString":I
    .local v5, "text":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttText(IIILjava/lang/String;I)V

    goto :goto_0

    .line 333
    .end local v2    # "serial":I
    .end local v3    # "callId":I
    .end local v4    # "lenOfString":I
    .end local v5    # "text":Ljava/lang/String;
    .restart local p1    # "serial":I
    .restart local p2    # "callId":I
    .restart local p3    # "lenOfString":I
    .restart local p4    # "text":Ljava/lang/String;
    :cond_1
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "serial":I
    .end local p2    # "callId":I
    .end local p3    # "lenOfString":I
    .end local p4    # "text":Ljava/lang/String;
    .restart local v2    # "serial":I
    .restart local v3    # "callId":I
    .restart local v4    # "lenOfString":I
    .restart local v5    # "text":Ljava/lang/String;
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object p2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast p1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 335
    invoke-interface {p1, v2, v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    .line 337
    :cond_2
    :goto_0
    return-void
.end method

.method public sendUssi(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendUssi(ILjava/lang/String;I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 465
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    .line 467
    :cond_2
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "ims"    # Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 55
    const-string v0, "MtkRadioExImsProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 56
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mIsAidl:Z

    .line 60
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getInterfaceVersion()I

    move-result v1

    .line 61
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 70
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_2:Lcom/android/internal/telephony/HalVersion;

    goto :goto_0

    .line 66
    :pswitch_0
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    .line 67
    .local v2, "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    goto :goto_0

    .line 63
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :pswitch_1
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 64
    .restart local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    nop

    .line 73
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

    .line 74
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 78
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

    .line 80
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    array-length v0, p2

    new-array v0, v0, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 515
    .local v0, "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 516
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;-><init>()V

    aput-object v2, v0, v1

    .line 517
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->status:I

    .line 518
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->serviceClass:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->serviceClass:I

    .line 519
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->toa:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->toa:I

    .line 520
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    if-eqz v3, :cond_1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->number:Ljava/lang/String;

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setBarringCalls(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;I)V

    .line 526
    .end local v0    # "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    :cond_3
    return-void
.end method

.method public setCallAdditionalInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 836
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 837
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 838
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 839
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 840
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 841
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 843
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setCallAdditionalInfo(I[Ljava/lang/String;I)V

    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 847
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 845
    :cond_2
    :goto_0
    nop

    .line 849
    :goto_1
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsBearerNotification(III)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 145
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsBearerNotification(II)V

    .line 147
    :cond_2
    :goto_0
    return-void
.end method

.method public setImsCallMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCallMode(III)V

    goto :goto_0

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 866
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCallMode(II)V

    .line 868
    :cond_2
    :goto_0
    return-void
.end method

.method public setImsCfgFeatureValue(IIIII)V
    .locals 14
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgFeatureValue(IIIIII)V

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v8, v0

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1019
    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    .line 1022
    :cond_2
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgProvisionValue(IILjava/lang/String;I)V

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1040
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 1042
    :cond_2
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsRegistrationReport(II)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 416
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    .line 418
    :cond_2
    :goto_0
    return-void
.end method

.method public setImscfg(IZZZZZZ)V
    .locals 19
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1058
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1060
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    iget-object v2, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v10, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImscfg(IZZZZZZI)V

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1065
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v11, v1

    check-cast v11, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1066
    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    invoke-interface/range {v11 .. v18}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    .line 1073
    :cond_2
    :goto_0
    return-void
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "serial":I
    .end local p2    # "keys":Ljava/lang/String;
    .end local p3    # "values":Ljava/lang/String;
    .end local p4    # "type":I
    .local v2, "serial":I
    .local v3, "keys":Ljava/lang/String;
    .local v4, "values":Ljava/lang/String;
    .local v5, "type":I
    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1132
    .end local v2    # "serial":I
    .end local v3    # "keys":Ljava/lang/String;
    .end local v4    # "values":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local p1    # "serial":I
    .restart local p2    # "keys":Ljava/lang/String;
    .restart local p3    # "values":Ljava/lang/String;
    .restart local p4    # "type":I
    :cond_1
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "serial":I
    .end local p2    # "keys":Ljava/lang/String;
    .end local p3    # "values":Ljava/lang/String;
    .end local p4    # "type":I
    .restart local v2    # "serial":I
    .restart local v3    # "keys":Ljava/lang/String;
    .restart local v4    # "values":Ljava/lang/String;
    .restart local v5    # "type":I
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object p2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1133
    iget-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast p1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1134
    invoke-interface {p1, v2, v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1136
    :cond_2
    :goto_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setRttMode(III)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 356
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setRttMode(II)V

    .line 358
    :cond_2
    :goto_0
    return-void
.end method

.method public setSipHeader(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 882
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 883
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 884
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 885
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 887
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeader(I[Ljava/lang/String;I)V

    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 891
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 889
    :cond_2
    :goto_0
    nop

    .line 893
    :goto_1
    return-void
.end method

.method public setSipHeaderReport(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 907
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 908
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 910
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeaderReport(I[Ljava/lang/String;I)V

    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 914
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 912
    :cond_2
    :goto_0
    nop

    .line 916
    :goto_1
    return-void
.end method

.method public setVoiceDomainPreference(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setVoiceDomainPreference(III)V

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1090
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    .line 1092
    :cond_2
    :goto_0
    return-void
.end method

.method public setWfcProfile(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWfcProfile(III)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1110
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWfcProfile(II)V

    .line 1112
    :cond_2
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setupXcapUserAgentString(ILjava/lang/String;I)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 483
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 485
    :cond_2
    :goto_0
    return-void
.end method

.method public toggleRttAudioIndication(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->toggleRttAudioIndication(IIII)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 376
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    .line 378
    :cond_2
    :goto_0
    return-void
.end method

.method public videoCallAccept(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoCallAccept(IIII)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 545
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoCallAccept(III)V

    .line 547
    :cond_2
    :goto_0
    return-void
.end method

.method public videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 563
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 564
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 565
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoRingtoneEventRequest(I[Ljava/lang/String;I)V

    .end local v0    # "length":I
    .end local v1    # "data":[Ljava/lang/String;
    goto :goto_1

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 572
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    goto :goto_2

    .line 570
    :cond_3
    :goto_1
    nop

    .line 574
    :goto_2
    return-void
.end method

.method public vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDial(ILandroid/hardware/radio/voice/Dial;I)V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 591
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 593
    :cond_2
    :goto_0
    return-void
.end method

.method public vtDialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 609
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 611
    :cond_2
    :goto_0
    return-void
.end method

.method public vtEmergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 13
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p4, "clirMode"    # I
    .param p5, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 627
    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static {p2, v11, v12}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v3

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/mediatek/ims/ril/MtkRadioExImsProxy$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v5, v2

    goto :goto_0

    .line 631
    :cond_1
    const/4 v2, 0x0

    move-object v5, v2

    .line 632
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 626
    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    move v2, p1

    invoke-interface/range {v1 .. v10}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtEmergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZII)V

    goto :goto_1

    .line 639
    :cond_2
    move/from16 v11, p4

    move-object/from16 v12, p5

    const-string v1, "MtkRadioExImsProxy"

    const-string v2, "vtEmergencyDial support on aidl only"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_1
    return-void
.end method
