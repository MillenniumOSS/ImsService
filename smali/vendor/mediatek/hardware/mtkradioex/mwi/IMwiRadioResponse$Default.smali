.class public Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse$Default;
.super Ljava/lang/Object;
.source "IMwiRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;
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

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getWfcConfigResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public setWfcConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/RadioResponseInfo;)V
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

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
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
