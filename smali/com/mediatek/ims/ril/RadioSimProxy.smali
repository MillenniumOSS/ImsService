.class public Lcom/mediatek/ims/ril/RadioSimProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioSimProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioSimProxy"


# instance fields
.field private volatile mSimProxy:Landroid/hardware/radio/sim/IRadioSim;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 76
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/sim/IRadioSim;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-object v0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "serial":I
    .end local p2    # "facility":Ljava/lang/String;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "serviceClass":I
    .end local p5    # "appId":Ljava/lang/String;
    .local v2, "serial":I
    .local v3, "facility":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    .local v5, "serviceClass":I
    .local v6, "appId":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Landroid/hardware/radio/sim/IRadioSim;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v2    # "serial":I
    .end local v3    # "facility":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "serviceClass":I
    .end local v6    # "appId":Ljava/lang/String;
    .restart local p1    # "serial":I
    .restart local p2    # "facility":Ljava/lang/String;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "serviceClass":I
    .restart local p5    # "appId":Ljava/lang/String;
    :cond_1
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "serial":I
    .end local p2    # "facility":Ljava/lang/String;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "serviceClass":I
    .end local p5    # "appId":Ljava/lang/String;
    .restart local v2    # "serial":I
    .restart local v3    # "facility":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v5    # "serviceClass":I
    .restart local v6    # "appId":Ljava/lang/String;
    move-object v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .end local v2    # "serial":I
    .local v3, "serial":I
    .local v4, "facility":Ljava/lang/String;
    .local v5, "password":Ljava/lang/String;
    .local v6, "serviceClass":I
    .local v7, "appId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface/range {v2 .. v7}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    .line 118
    .end local v7    # "appId":Ljava/lang/String;
    .restart local v2    # "serial":I
    .local v3, "facility":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    .local v5, "serviceClass":I
    .local v6, "appId":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {v0}, Landroid/hardware/radio/sim/IRadioSim;->responseAcknowledgement()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 99
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)Lcom/android/internal/telephony/HalVersion;
    .locals 4
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "sim"    # Landroid/hardware/radio/sim/IRadioSim;

    .line 49
    move-object v0, p1

    .line 51
    .local v0, "version":Lcom/android/internal/telephony/HalVersion;
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/radio/sim/IRadioSim;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getAospServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
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

    const-string v3, "RadioSimProxy"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 56
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mIsAidl:Z

    .line 58
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v1
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "serial":I
    .end local p2    # "facility":Ljava/lang/String;
    .end local p3    # "lockState":Z
    .end local p4    # "password":Ljava/lang/String;
    .end local p5    # "serviceClass":I
    .end local p6    # "appId":Ljava/lang/String;
    .local v2, "serial":I
    .local v3, "facility":Ljava/lang/String;
    .local v4, "lockState":Z
    .local v5, "password":Ljava/lang/String;
    .local v6, "serviceClass":I
    .local v7, "appId":Ljava/lang/String;
    invoke-interface/range {v1 .. v7}, Landroid/hardware/radio/sim/IRadioSim;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v2    # "serial":I
    .end local v3    # "facility":Ljava/lang/String;
    .end local v4    # "lockState":Z
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "appId":Ljava/lang/String;
    .restart local p1    # "serial":I
    .restart local p2    # "facility":Ljava/lang/String;
    .restart local p3    # "lockState":Z
    .restart local p4    # "password":Ljava/lang/String;
    .restart local p5    # "serviceClass":I
    .restart local p6    # "appId":Ljava/lang/String;
    :cond_1
    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "serial":I
    .end local p2    # "facility":Ljava/lang/String;
    .end local p3    # "lockState":Z
    .end local p4    # "password":Ljava/lang/String;
    .end local p5    # "serviceClass":I
    .end local p6    # "appId":Ljava/lang/String;
    .restart local v2    # "serial":I
    .restart local v3    # "facility":Ljava/lang/String;
    .restart local v4    # "lockState":Z
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v6    # "serviceClass":I
    .restart local v7    # "appId":Ljava/lang/String;
    move-object v8, v7

    move v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move v3, v2

    .end local v2    # "serial":I
    .local v3, "serial":I
    .local v4, "facility":Ljava/lang/String;
    .local v5, "lockState":Z
    .local v6, "password":Ljava/lang/String;
    .local v7, "serviceClass":I
    .local v8, "appId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface/range {v2 .. v8}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    .line 140
    .end local v8    # "appId":Ljava/lang/String;
    .restart local v2    # "serial":I
    .local v3, "facility":Ljava/lang/String;
    .local v4, "lockState":Z
    .local v5, "password":Ljava/lang/String;
    .local v6, "serviceClass":I
    .local v7, "appId":Ljava/lang/String;
    :goto_0
    return-void
.end method
