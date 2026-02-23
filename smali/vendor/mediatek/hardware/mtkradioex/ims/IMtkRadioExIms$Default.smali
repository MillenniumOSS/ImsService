.class public Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Default;
.super Ljava/lang/Object;
.source "IMtkRadioExIms.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
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
.method public acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsAck;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/messaging/CdmaSmsAck;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelUssi(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public conferenceDial(ILvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dailInfo"    # Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public controlCall(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "callId"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public controlImsConferenceCallMember(IIILjava/lang/String;II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "confCallId"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callId"    # I
    .param p6, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public dialWithSipUri(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public eccRedialApprove(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "approve"    # I
    .param p3, "callId"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public forceReleaseCall(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public getBarringCalls(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public getImsCfgFeatureValue(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public getImsCfgProvisionValue(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public getImsCfgResourceCapValue(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 209
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceDomainPreference(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public getWfcConfig(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public getXcapStatus(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public imsBearerStateConfirm(IIIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public imsEctCommand(ILjava/lang/String;II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public notifyEPDGScreenState(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public pullCall(ILjava/lang/String;ZI)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public querySsacStatus(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public queryVopsStatus(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public rttModifyRequestResponse(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public sendImsSmsEx(ILandroid/hardware/radio/messaging/ImsSmsMessage;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/ImsSmsMessage;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public sendRttModifyRequest(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "newMode"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public sendRttText(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public sendUssi(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public setBarringCalls(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "calls"    # [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public setCallAdditionalInfo(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "info"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public setEmergencyAddressId(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public setImsBearerNotification(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setImsCallMode(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public setImsCfgFeatureValue(IIIIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .param p6, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public setImsRegistrationReport(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public setImscfg(IZZZZZZI)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .param p8, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public setLocationInfo(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "srcIp"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstIp"    # Ljava/lang/String;
    .param p7, "dstPort"    # I
    .param p8, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;)V
    .locals 0
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;)V
    .locals 0
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    return-void
.end method

.method public setRttMode(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public setSipHeader(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public setSipHeaderReport(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public setVoiceDomainPreference(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public setWfcConfig(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "ifName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public setWfcProfile(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public setWifiAssociated(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public setWifiEnabled(ILjava/lang/String;III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "isWifiEnabled"    # I
    .param p4, "isFlightModeOn"    # I
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public setWifiIpAddress(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public setWifiPingResult(IIIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "rat"    # I
    .param p3, "latency"    # I
    .param p4, "pktloss"    # I
    .param p5, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public setWifiSignalLevel(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "rssi"    # I
    .param p3, "snr"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public toggleRttAudioIndication(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public videoCallAccept(IIII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .param p4, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public videoRingtoneEventRequest(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "event"    # [Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public vtDial(ILandroid/hardware/radio/voice/Dial;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public vtDialWithSipUri(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public vtEmergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZII)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .param p3, "categories"    # I
    .param p4, "urns"    # [Ljava/lang/String;
    .param p5, "routing"    # I
    .param p6, "hasKnownUserIntentEmergency"    # Z
    .param p7, "isTesting"    # Z
    .param p8, "videoDirection"    # I
    .param p9, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    return-void
.end method
