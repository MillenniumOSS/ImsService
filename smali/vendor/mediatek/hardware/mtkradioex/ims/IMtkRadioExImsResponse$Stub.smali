.class public abstract Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExImsResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeLastIncomingCdmaSmsExResponse:I = 0x4

.field static final TRANSACTION_acknowledgeLastIncomingGsmSmsExResponse:I = 0x3

.field static final TRANSACTION_cancelUssiResponse:I = 0xe

.field static final TRANSACTION_conferenceDialResponse:I = 0x1b

.field static final TRANSACTION_controlCallResponse:I = 0x1d

.field static final TRANSACTION_controlImsConferenceCallMemberResponse:I = 0x1e

.field static final TRANSACTION_dialWithSipUriResponse:I = 0x17

.field static final TRANSACTION_eccRedialApproveResponse:I = 0x1a

.field static final TRANSACTION_forceReleaseCallResponse:I = 0x1c

.field static final TRANSACTION_getBarringCallsResponse:I = 0x11

.field static final TRANSACTION_getImsCfgFeatureValueResponse:I = 0x26

.field static final TRANSACTION_getImsCfgProvisionValueResponse:I = 0x28

.field static final TRANSACTION_getImsCfgResourceCapValueResponse:I = 0x29

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getVoiceDomainPreferenceResponse:I = 0x2c

.field static final TRANSACTION_getXcapStatusResponse:I = 0xf

.field static final TRANSACTION_imsBearerStateConfirmResponse:I = 0x1

.field static final TRANSACTION_imsEctCommandResponse:I = 0x18

.field static final TRANSACTION_pullCallResponse:I = 0x19

.field static final TRANSACTION_querySsacStatusResponse:I = 0x2d

.field static final TRANSACTION_queryVopsStatusResponse:I = 0xc

.field static final TRANSACTION_rttModifyRequestResponseResponse:I = 0x9

.field static final TRANSACTION_sendImsSmsExResponse:I = 0x5

.field static final TRANSACTION_sendRttModifyRequestResponse:I = 0x7

.field static final TRANSACTION_sendRttTextResponse:I = 0x8

.field static final TRANSACTION_sendUssiResponse:I = 0xd

.field static final TRANSACTION_setBarringCallsResponse:I = 0x12

.field static final TRANSACTION_setCallAdditionalInfoResponse:I = 0x22

.field static final TRANSACTION_setImsBearerNotificationResponse:I = 0x2

.field static final TRANSACTION_setImsCallModeResponse:I = 0x21

.field static final TRANSACTION_setImsCfgFeatureValueResponse:I = 0x25

.field static final TRANSACTION_setImsCfgProvisionValueResponse:I = 0x27

.field static final TRANSACTION_setImsRegistrationReportResponse:I = 0xb

.field static final TRANSACTION_setImscfgResponse:I = 0x23

.field static final TRANSACTION_setModemImsCfgResponse:I = 0x24

.field static final TRANSACTION_setRttModeResponse:I = 0x6

.field static final TRANSACTION_setSipHeaderReportResponse:I = 0x20

.field static final TRANSACTION_setSipHeaderResponse:I = 0x1f

.field static final TRANSACTION_setVoiceDomainPreferenceResponse:I = 0x2b

.field static final TRANSACTION_setWfcProfileResponse:I = 0x2a

.field static final TRANSACTION_setupXcapUserAgentStringResponse:I = 0x10

.field static final TRANSACTION_toggleRttAudioIndicationResponse:I = 0xa

.field static final TRANSACTION_videoCallAcceptResponse:I = 0x15

.field static final TRANSACTION_videoRingtoneEventResponse:I = 0x16

.field static final TRANSACTION_vtDialResponse:I = 0x13

.field static final TRANSACTION_vtDialWithSipUriResponse:I = 0x14

.field static final TRANSACTION_vtEmergencyDialResponse:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 181
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->markVintfStability()V

    .line 182
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 194
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;

    if-eqz v1, :cond_1

    .line 195
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;

    return-object v1

    .line 197
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 201
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 206
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 207
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return v2

    .line 213
    :cond_1
    if-ne p1, v1, :cond_2

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return v2

    .line 218
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return v2

    .line 223
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 613
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 606
    :pswitch_0
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 607
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->vtEmergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 609
    goto/16 :goto_0

    .line 596
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 598
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 599
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->querySsacStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 601
    goto/16 :goto_0

    .line 586
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 588
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 589
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getVoiceDomainPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 591
    goto/16 :goto_0

    .line 578
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 579
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setVoiceDomainPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 581
    goto/16 :goto_0

    .line 570
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 571
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setWfcProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 573
    goto/16 :goto_0

    .line 560
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 562
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getImsCfgResourceCapValueResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 565
    goto/16 :goto_0

    .line 550
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_6
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 552
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getImsCfgProvisionValueResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 555
    goto/16 :goto_0

    .line 542
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 543
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImsCfgProvisionValueResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 545
    goto/16 :goto_0

    .line 532
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_8
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 534
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 535
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getImsCfgFeatureValueResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 537
    goto/16 :goto_0

    .line 524
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_9
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 525
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImsCfgFeatureValueResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 527
    goto/16 :goto_0

    .line 514
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 516
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setModemImsCfgResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 519
    goto/16 :goto_0

    .line 506
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 507
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImscfgResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 509
    goto/16 :goto_0

    .line 498
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 499
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setCallAdditionalInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 501
    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 491
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImsCallModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 493
    goto/16 :goto_0

    .line 482
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_e
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 483
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setSipHeaderReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 485
    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 475
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setSipHeaderResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 477
    goto/16 :goto_0

    .line 466
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 467
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->controlImsConferenceCallMemberResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 469
    goto/16 :goto_0

    .line 458
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 459
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->controlCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 461
    goto/16 :goto_0

    .line 450
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 451
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->forceReleaseCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 453
    goto/16 :goto_0

    .line 442
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_13
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 443
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->conferenceDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 445
    goto/16 :goto_0

    .line 434
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_14
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 435
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->eccRedialApproveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 437
    goto/16 :goto_0

    .line 426
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_15
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 427
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->pullCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 429
    goto/16 :goto_0

    .line 418
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_16
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 419
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->imsEctCommandResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 421
    goto/16 :goto_0

    .line 410
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_17
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 411
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->dialWithSipUriResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 413
    goto/16 :goto_0

    .line 402
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_18
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 403
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->videoRingtoneEventResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 405
    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_19
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 395
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->videoCallAcceptResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 397
    goto/16 :goto_0

    .line 386
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 387
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->vtDialWithSipUriResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 389
    goto/16 :goto_0

    .line 378
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 379
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->vtDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 381
    goto/16 :goto_0

    .line 370
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 371
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setBarringCallsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 373
    goto/16 :goto_0

    .line 360
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 362
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 363
    .local v3, "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getBarringCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;)V

    .line 365
    goto/16 :goto_0

    .line 352
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    :pswitch_1e
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 353
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setupXcapUserAgentStringResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 355
    goto/16 :goto_0

    .line 344
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 345
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->getXcapStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 347
    goto/16 :goto_0

    .line 336
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_20
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 337
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->cancelUssiResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 339
    goto/16 :goto_0

    .line 328
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_21
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 329
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->sendUssiResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 331
    goto/16 :goto_0

    .line 318
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_22
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 320
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->queryVopsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 323
    goto/16 :goto_0

    .line 310
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_23
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 311
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImsRegistrationReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 313
    goto/16 :goto_0

    .line 302
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_24
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 303
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->toggleRttAudioIndicationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 305
    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_25
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 295
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->rttModifyRequestResponseResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 297
    goto/16 :goto_0

    .line 286
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_26
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 287
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->sendRttTextResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 289
    goto/16 :goto_0

    .line 278
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_27
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 279
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->sendRttModifyRequestResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 281
    goto :goto_0

    .line 270
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_28
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 271
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setRttModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 273
    goto :goto_0

    .line 260
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_29
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 262
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 263
    .local v3, "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->sendImsSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 265
    goto :goto_0

    .line 252
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_2a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 253
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 255
    goto :goto_0

    .line 244
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 245
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 247
    goto :goto_0

    .line 236
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 237
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->setImsBearerNotificationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 239
    goto :goto_0

    .line 228
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 229
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;->imsBearerStateConfirmResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 231
    nop

    .line 616
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
