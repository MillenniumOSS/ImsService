.class public Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Default;
.super Ljava/lang/Object;
.source "IMtkRadioExModemResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEngineeringModeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "applyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "resList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public sendRequestRawResponse(Landroid/hardware/radio/RadioResponseInfo;[B)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public sendRequestStringsResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method
