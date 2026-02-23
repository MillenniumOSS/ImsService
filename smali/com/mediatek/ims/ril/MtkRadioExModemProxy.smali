.class public Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExModemProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExModemProxy"


# instance fields
.field private volatile mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 89
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 111
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method public runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 14
    .param p1, "serial"    # I
    .param p2, "nafFqdn"    # Ljava/lang/String;
    .param p3, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p4, "forceRun"    # Z
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v7, 0x1

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v8, v0

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 123
    move v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 125
    :cond_2
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "modem"    # Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 46
    const-string v0, "MtkRadioExModemProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mIsAidl:Z

    .line 51
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->getInterfaceVersion()I

    move-result v1

    .line 52
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 61
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_2:Lcom/android/internal/telephony/HalVersion;

    goto :goto_0

    .line 57
    :pswitch_0
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    .line 58
    .local v2, "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    goto :goto_0

    .line 54
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :pswitch_1
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 55
    .restart local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    nop

    .line 64
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

    .line 65
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
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

    .line 71
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVendorSetting(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setVendorSetting(IILjava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 135
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    .line 137
    :cond_2
    :goto_0
    return-void
.end method
