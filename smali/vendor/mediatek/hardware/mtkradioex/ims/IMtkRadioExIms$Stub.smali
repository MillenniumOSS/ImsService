.class public abstract Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExIms.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeLastIncomingCdmaSmsEx:I = 0x3

.field static final TRANSACTION_acknowledgeLastIncomingGsmSmsEx:I = 0x4

.field static final TRANSACTION_cancelUssi:I = 0xd

.field static final TRANSACTION_conferenceDial:I = 0x17

.field static final TRANSACTION_controlCall:I = 0x18

.field static final TRANSACTION_controlImsConferenceCallMember:I = 0x19

.field static final TRANSACTION_dialWithSipUri:I = 0x1a

.field static final TRANSACTION_eccRedialApprove:I = 0x1b

.field static final TRANSACTION_forceReleaseCall:I = 0x1c

.field static final TRANSACTION_getBarringCalls:I = 0x11

.field static final TRANSACTION_getImsCfgFeatureValue:I = 0x23

.field static final TRANSACTION_getImsCfgProvisionValue:I = 0x24

.field static final TRANSACTION_getImsCfgResourceCapValue:I = 0x25

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getVoiceDomainPreference:I = 0x26

.field static final TRANSACTION_getWfcConfig:I = 0x2e

.field static final TRANSACTION_getXcapStatus:I = 0xe

.field static final TRANSACTION_imsBearerStateConfirm:I = 0x1

.field static final TRANSACTION_imsEctCommand:I = 0x1d

.field static final TRANSACTION_notifyEPDGScreenState:I = 0x2f

.field static final TRANSACTION_pullCall:I = 0x1e

.field static final TRANSACTION_querySsacStatus:I = 0x2d

.field static final TRANSACTION_queryVopsStatus:I = 0xb

.field static final TRANSACTION_responseAcknowledgementMtk:I = 0x39

.field static final TRANSACTION_rttModifyRequestResponse:I = 0x6

.field static final TRANSACTION_sendImsSmsEx:I = 0x5

.field static final TRANSACTION_sendRttModifyRequest:I = 0x7

.field static final TRANSACTION_sendRttText:I = 0x8

.field static final TRANSACTION_sendUssi:I = 0xf

.field static final TRANSACTION_setBarringCalls:I = 0x12

.field static final TRANSACTION_setCallAdditionalInfo:I = 0x1f

.field static final TRANSACTION_setEmergencyAddressId:I = 0x30

.field static final TRANSACTION_setImsBearerNotification:I = 0x2

.field static final TRANSACTION_setImsCallMode:I = 0x20

.field static final TRANSACTION_setImsCfgFeatureValue:I = 0x27

.field static final TRANSACTION_setImsCfgProvisionValue:I = 0x28

.field static final TRANSACTION_setImsRegistrationReport:I = 0xc

.field static final TRANSACTION_setImscfg:I = 0x29

.field static final TRANSACTION_setLocationInfo:I = 0x31

.field static final TRANSACTION_setModemImsCfg:I = 0x2c

.field static final TRANSACTION_setNattKeepAliveStatus:I = 0x32

.field static final TRANSACTION_setResponseFunctionsMtk:I = 0x3a

.field static final TRANSACTION_setResponseFunctionsMwi:I = 0x3b

.field static final TRANSACTION_setRttMode:I = 0x9

.field static final TRANSACTION_setSipHeader:I = 0x21

.field static final TRANSACTION_setSipHeaderReport:I = 0x22

.field static final TRANSACTION_setVoiceDomainPreference:I = 0x2a

.field static final TRANSACTION_setWfcConfig:I = 0x33

.field static final TRANSACTION_setWfcProfile:I = 0x2b

.field static final TRANSACTION_setWifiAssociated:I = 0x34

.field static final TRANSACTION_setWifiEnabled:I = 0x35

.field static final TRANSACTION_setWifiIpAddress:I = 0x36

.field static final TRANSACTION_setWifiPingResult:I = 0x37

.field static final TRANSACTION_setWifiSignalLevel:I = 0x38

.field static final TRANSACTION_setupXcapUserAgentString:I = 0x10

.field static final TRANSACTION_toggleRttAudioIndication:I = 0xa

.field static final TRANSACTION_videoCallAccept:I = 0x13

.field static final TRANSACTION_videoRingtoneEventRequest:I = 0x14

.field static final TRANSACTION_vtDial:I = 0x15

.field static final TRANSACTION_vtDialWithSipUri:I = 0x16

.field static final TRANSACTION_vtEmergencyDial:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 223
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->markVintfStability()V

    .line 224
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 232
    if-nez p0, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-eqz v1, :cond_1

    .line 237
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-object v1

    .line 239
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 243
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 248
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    if-gt v10, v0, :cond_0

    .line 249
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    :cond_0
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1

    .line 252
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    return v14

    .line 255
    :cond_1
    if-ne v10, v0, :cond_2

    .line 256
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return v14

    .line 260
    :cond_2
    const v0, 0xfffffe

    if-ne v10, v0, :cond_3

    .line 261
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    return v14

    .line 265
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 1058
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1035
    :pswitch_0
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .local v1, "_arg0":I
    sget-object v0, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/radio/voice/Dial;

    .line 1039
    .local v2, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1041
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1045
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1047
    .local v6, "_arg5":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1049
    .local v7, "_arg6":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1051
    .local v8, "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1052
    .local v9, "_arg8":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->vtEmergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZII)V

    .line 1054
    goto/16 :goto_0

    .line 1025
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/voice/Dial;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    :pswitch_1
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;

    move-result-object v1

    .line 1027
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;

    move-result-object v2

    .line 1028
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;)V

    .line 1030
    goto/16 :goto_0

    .line 1015
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
    :pswitch_2
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;

    move-result-object v1

    .line 1017
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;

    move-result-object v2

    .line 1018
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;)V

    .line 1020
    goto/16 :goto_0

    .line 1009
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;
    :pswitch_3
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->responseAcknowledgementMtk()V

    .line 1010
    goto/16 :goto_0

    .line 996
    :pswitch_4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1000
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1002
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1003
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWifiSignalLevel(IIII)V

    .line 1005
    goto/16 :goto_0

    .line 980
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_5
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 982
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 984
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 986
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 988
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 989
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWifiPingResult(IIIII)V

    .line 991
    goto/16 :goto_0

    .line 968
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_6
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 970
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 973
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWifiIpAddress(I[Ljava/lang/String;I)V

    .line 975
    goto/16 :goto_0

    .line 952
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 954
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 958
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 960
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 961
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWifiEnabled(ILjava/lang/String;III)V

    .line 963
    goto/16 :goto_0

    .line 940
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_8
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 942
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 945
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWifiAssociated(I[Ljava/lang/String;I)V

    .line 947
    goto/16 :goto_0

    .line 924
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_9
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 928
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 933
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;I)V

    .line 935
    goto/16 :goto_0

    .line 902
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 908
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 910
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 912
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 914
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 916
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 917
    .restart local v8    # "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V

    .line 919
    goto/16 :goto_0

    .line 890
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    :pswitch_b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 892
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 895
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setLocationInfo(I[Ljava/lang/String;I)V

    .line 897
    goto/16 :goto_0

    .line 878
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 880
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 883
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setEmergencyAddressId(ILjava/lang/String;I)V

    .line 885
    goto/16 :goto_0

    .line 866
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 868
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 870
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 871
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->notifyEPDGScreenState(III)V

    .line 873
    goto/16 :goto_0

    .line 854
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 858
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 859
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getWfcConfig(III)V

    .line 861
    goto/16 :goto_0

    .line 844
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 847
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->querySsacStatus(II)V

    .line 849
    goto/16 :goto_0

    .line 828
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_10
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 836
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 837
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;II)V

    .line 839
    goto/16 :goto_0

    .line 816
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_11
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 820
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 821
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setWfcProfile(III)V

    .line 823
    goto/16 :goto_0

    .line 804
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_12
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 808
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 809
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setVoiceDomainPreference(III)V

    .line 811
    goto/16 :goto_0

    .line 782
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_13
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 786
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 788
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 790
    .local v4, "_arg3":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 792
    .local v5, "_arg4":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 794
    .local v6, "_arg5":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 796
    .local v7, "_arg6":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 797
    .restart local v8    # "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImscfg(IZZZZZZI)V

    .line 799
    goto/16 :goto_0

    .line 768
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":I
    :pswitch_14
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 772
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 775
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImsCfgProvisionValue(IILjava/lang/String;I)V

    .line 777
    goto/16 :goto_0

    .line 750
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_15
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 756
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 758
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 760
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 761
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImsCfgFeatureValue(IIIIII)V

    .line 763
    goto/16 :goto_0

    .line 740
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_16
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 743
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getVoiceDomainPreference(II)V

    .line 745
    goto/16 :goto_0

    .line 728
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_17
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 730
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getImsCfgResourceCapValue(III)V

    .line 735
    goto/16 :goto_0

    .line 716
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_18
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 718
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 720
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 721
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getImsCfgProvisionValue(III)V

    .line 723
    goto/16 :goto_0

    .line 702
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_19
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 704
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 708
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getImsCfgFeatureValue(IIII)V

    .line 711
    goto/16 :goto_0

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setSipHeaderReport(I[Ljava/lang/String;I)V

    .line 697
    goto/16 :goto_0

    .line 678
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 680
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 682
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setSipHeader(I[Ljava/lang/String;I)V

    .line 685
    goto/16 :goto_0

    .line 666
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 670
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 671
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImsCallMode(III)V

    .line 673
    goto/16 :goto_0

    .line 654
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setCallAdditionalInfo(I[Ljava/lang/String;I)V

    .line 661
    goto/16 :goto_0

    .line 640
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 646
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 647
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->pullCall(ILjava/lang/String;ZI)V

    .line 649
    goto/16 :goto_0

    .line 626
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_1f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 628
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 632
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 633
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->imsEctCommand(ILjava/lang/String;II)V

    .line 635
    goto/16 :goto_0

    .line 614
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_20
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 619
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->forceReleaseCall(III)V

    .line 621
    goto/16 :goto_0

    .line 600
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_21
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 607
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->eccRedialApprove(IIII)V

    .line 609
    goto/16 :goto_0

    .line 588
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_22
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 590
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->dialWithSipUri(ILjava/lang/String;I)V

    .line 595
    goto/16 :goto_0

    .line 570
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_23
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 572
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 574
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 576
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 580
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 581
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;II)V

    .line 583
    goto/16 :goto_0

    .line 556
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 558
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->controlCall(IIII)V

    .line 565
    goto/16 :goto_0

    .line 544
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_25
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;

    .line 548
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;I)V

    .line 551
    goto/16 :goto_0

    .line 532
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    .end local v3    # "_arg2":I
    :pswitch_26
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->vtDialWithSipUri(ILjava/lang/String;I)V

    .line 539
    goto/16 :goto_0

    .line 520
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_27
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/voice/Dial;

    .line 524
    .local v2, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 525
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->vtDial(ILandroid/hardware/radio/voice/Dial;I)V

    .line 527
    goto/16 :goto_0

    .line 508
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/voice/Dial;
    .end local v3    # "_arg2":I
    :pswitch_28
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 513
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->videoRingtoneEventRequest(I[Ljava/lang/String;I)V

    .line 515
    goto/16 :goto_0

    .line 494
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_29
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 496
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 501
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->videoCallAccept(IIII)V

    .line 503
    goto/16 :goto_0

    .line 482
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_2a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 486
    .local v2, "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 487
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setBarringCalls(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;I)V

    .line 489
    goto/16 :goto_0

    .line 470
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    .end local v3    # "_arg2":I
    :pswitch_2b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getBarringCalls(III)V

    .line 477
    goto/16 :goto_0

    .line 458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_2c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 460
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setupXcapUserAgentString(ILjava/lang/String;I)V

    .line 465
    goto/16 :goto_0

    .line 446
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_2d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->sendUssi(ILjava/lang/String;I)V

    .line 453
    goto/16 :goto_0

    .line 436
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_2e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 438
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->getXcapStatus(II)V

    .line 441
    goto/16 :goto_0

    .line 426
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_2f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->cancelUssi(II)V

    .line 431
    goto/16 :goto_0

    .line 416
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_30
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 418
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImsRegistrationReport(II)V

    .line 421
    goto/16 :goto_0

    .line 406
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_31
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->queryVopsStatus(II)V

    .line 411
    goto/16 :goto_0

    .line 392
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_32
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 399
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->toggleRttAudioIndication(IIII)V

    .line 401
    goto/16 :goto_0

    .line 380
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_33
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 384
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setRttMode(III)V

    .line 387
    goto/16 :goto_0

    .line 364
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_34
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 373
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->sendRttText(IIILjava/lang/String;I)V

    .line 375
    goto/16 :goto_0

    .line 350
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_35
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->sendRttModifyRequest(IIII)V

    .line 359
    goto/16 :goto_0

    .line 336
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_36
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->rttModifyRequestResponse(IIII)V

    .line 345
    goto/16 :goto_0

    .line 324
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_37
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/messaging/ImsSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/messaging/ImsSmsMessage;

    .line 328
    .local v2, "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->sendImsSmsEx(ILandroid/hardware/radio/messaging/ImsSmsMessage;I)V

    .line 331
    goto :goto_0

    .line 310
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    .end local v3    # "_arg2":I
    :pswitch_38
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 314
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 316
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->acknowledgeLastIncomingGsmSmsEx(IZII)V

    .line 319
    goto :goto_0

    .line 298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_39
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/messaging/CdmaSmsAck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/messaging/CdmaSmsAck;

    .line 302
    .local v2, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsAck;I)V

    .line 305
    goto :goto_0

    .line 286
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    .end local v3    # "_arg2":I
    :pswitch_3a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->setImsBearerNotification(III)V

    .line 293
    goto :goto_0

    .line 270
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 279
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->imsBearerStateConfirm(IIIII)V

    .line 281
    nop

    .line 1061
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
