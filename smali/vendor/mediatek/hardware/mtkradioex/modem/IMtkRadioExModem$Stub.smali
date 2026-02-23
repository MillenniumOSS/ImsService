.class public abstract Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExModem.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortCertificate:I = 0x1

.field static final TRANSACTION_enableCapability:I = 0x2

.field static final TRANSACTION_getEngineeringModeInfo:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_modifyModemType:I = 0x4

.field static final TRANSACTION_registerCellQltyReport:I = 0x18

.field static final TRANSACTION_responseAcknowledgementMtk:I = 0x19

.field static final TRANSACTION_restartRILD:I = 0x5

.field static final TRANSACTION_routeAuthMessage:I = 0x6

.field static final TRANSACTION_routeCertificate:I = 0x7

.field static final TRANSACTION_runGbaAuthentication:I = 0x14

.field static final TRANSACTION_sendAtciRequest:I = 0x8

.field static final TRANSACTION_sendEmbmsAtCommand:I = 0x9

.field static final TRANSACTION_sendRequestRaw:I = 0xa

.field static final TRANSACTION_sendRequestStrings:I = 0xb

.field static final TRANSACTION_sendSarIndicator:I = 0xc

.field static final TRANSACTION_sendWifiAssociated:I = 0x15

.field static final TRANSACTION_sendWifiEnabled:I = 0x16

.field static final TRANSACTION_sendWifiIpAddress:I = 0x17

.field static final TRANSACTION_setMaxUlSpeed:I = 0xd

.field static final TRANSACTION_setModemPower:I = 0xe

.field static final TRANSACTION_setResponseFunctionsAssist:I = 0x20

.field static final TRANSACTION_setResponseFunctionsCap:I = 0x1c

.field static final TRANSACTION_setResponseFunctionsEm:I = 0x1e

.field static final TRANSACTION_setResponseFunctionsForAtci:I = 0x1d

.field static final TRANSACTION_setResponseFunctionsGba:I = 0x1f

.field static final TRANSACTION_setResponseFunctionsMtk:I = 0x1a

.field static final TRANSACTION_setResponseFunctionsMtkIms:I = 0x1b

.field static final TRANSACTION_setTrm:I = 0xf

.field static final TRANSACTION_setTxPower:I = 0x10

.field static final TRANSACTION_setTxPowerStatus:I = 0x11

.field static final TRANSACTION_setVendorSetting:I = 0x12

.field static final TRANSACTION_syncAppEventStatus:I = 0x21

.field static final TRANSACTION_triggerModeSwitchByEcc:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->markVintfStability()V

    .line 143
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    if-eqz v1, :cond_1

    .line 156
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-object v1

    .line 158
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 162
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    sget-object v14, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 167
    .local v14, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v15, 0x1

    if-lt v12, v15, :cond_0

    if-gt v12, v1, :cond_0

    .line 168
    move-object/from16 v7, p2

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    move-object/from16 v7, p2

    .line 170
    :goto_0
    const v2, 0x5f4e5446

    if-ne v12, v2, :cond_1

    .line 171
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return v15

    .line 174
    :cond_1
    if-ne v12, v1, :cond_2

    .line 175
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return v15

    .line 179
    :cond_2
    const v1, 0xfffffe

    if-ne v12, v1, :cond_3

    .line 180
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v15

    .line 184
    :cond_3
    packed-switch v12, :pswitch_data_0

    .line 613
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 600
    :pswitch_0
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .local v2, "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .local v3, "_arg2":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 607
    .local v4, "_arg3":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->syncAppEventStatus(IIII)V

    .line 609
    goto/16 :goto_1

    .line 592
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/assist/IAssistModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/assist/IAssistModemResponse;

    move-result-object v1

    .line 593
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/assist/IAssistModemResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {v0, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/assist/IAssistModemResponse;)V

    .line 595
    goto/16 :goto_1

    .line 584
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/assist/IAssistModemResponse;
    :pswitch_2
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;

    move-result-object v1

    .line 585
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v0, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsGba(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;)V

    .line 587
    goto/16 :goto_1

    .line 574
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    :pswitch_3
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioResponse;

    move-result-object v1

    .line 576
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioIndication;

    move-result-object v2

    .line 577
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioIndication;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioIndication;)V

    .line 579
    goto/16 :goto_1

    .line 564
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/em/IEmRadioIndication;
    :pswitch_4
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/atci/IAtciResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/atci/IAtciResponse;

    move-result-object v1

    .line 566
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/atci/IAtciResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/atci/IAtciIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/atci/IAtciIndication;

    move-result-object v2

    .line 567
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/atci/IAtciIndication;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/atci/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/atci/IAtciIndication;)V

    .line 569
    goto/16 :goto_1

    .line 556
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/atci/IAtciResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/atci/IAtciIndication;
    :pswitch_5
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;

    move-result-object v1

    .line 557
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v0, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;)V

    .line 559
    goto/16 :goto_1

    .line 546
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;
    :pswitch_6
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;

    move-result-object v1

    .line 548
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;

    move-result-object v2

    .line 549
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;)V

    .line 551
    goto/16 :goto_1

    .line 536
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;
    :pswitch_7
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;

    move-result-object v1

    .line 538
    .restart local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;

    move-result-object v2

    .line 539
    .restart local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;)V

    .line 541
    goto/16 :goto_1

    .line 530
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;
    :pswitch_8
    invoke-virtual {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->responseAcknowledgementMtk()V

    .line 531
    goto/16 :goto_1

    .line 513
    :pswitch_9
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 524
    .local v6, "_arg5":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 485
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_a
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 487
    .restart local v1    # "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 491
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 493
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 495
    .local v5, "_arg4":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .restart local v6    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 499
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 501
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 503
    .local v9, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 506
    .local v11, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 508
    goto/16 :goto_1

    .line 471
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Ljava/lang/String;
    .end local v11    # "_arg10":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 477
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 478
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendWifiEnabled(ILjava/lang/String;II)V

    .line 480
    goto/16 :goto_1

    .line 449
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 461
    .restart local v6    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 463
    .restart local v7    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 464
    .local v8, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 466
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 431
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 439
    .local v4, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 441
    .local v5, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 442
    .restart local v6    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 444
    goto/16 :goto_1

    .line 419
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->triggerModeSwitchByEcc(III)V

    .line 426
    goto/16 :goto_1

    .line 405
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 412
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setVendorSetting(IILjava/lang/String;I)V

    .line 414
    goto/16 :goto_1

    .line 393
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 397
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setTxPowerStatus(III)V

    .line 400
    goto/16 :goto_1

    .line 381
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 385
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setTxPower(III)V

    .line 388
    goto/16 :goto_1

    .line 369
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setTrm(III)V

    .line 376
    goto/16 :goto_1

    .line 357
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 361
    .local v2, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setModemPower(IZI)V

    .line 364
    goto/16 :goto_1

    .line 345
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->setMaxUlSpeed(III)V

    .line 352
    goto/16 :goto_1

    .line 331
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .restart local v4    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendSarIndicator(IILjava/lang/String;I)V

    .line 340
    goto/16 :goto_1

    .line 319
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendRequestStrings(I[Ljava/lang/String;I)V

    .line 326
    goto/16 :goto_1

    .line 307
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 311
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendRequestRaw(I[BI)V

    .line 314
    goto/16 :goto_1

    .line 295
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 300
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendEmbmsAtCommand(ILjava/lang/String;I)V

    .line 302
    goto/16 :goto_1

    .line 283
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 287
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->sendAtciRequest(I[BI)V

    .line 290
    goto/16 :goto_1

    .line 267
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 273
    .local v3, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 275
    .local v4, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 276
    .restart local v5    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->routeCertificate(II[B[BI)V

    .line 278
    goto/16 :goto_1

    .line 253
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 259
    .restart local v3    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->routeAuthMessage(II[BI)V

    .line 262
    goto :goto_1

    .line 243
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->restartRILD(II)V

    .line 248
    goto :goto_1

    .line 229
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 236
    .restart local v4    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->modifyModemType(IIII)V

    .line 238
    goto :goto_1

    .line 217
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->getEngineeringModeInfo(III)V

    .line 224
    goto :goto_1

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .restart local v4    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    .restart local v5    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->enableCapability(ILjava/lang/String;III)V

    .line 212
    goto :goto_1

    .line 189
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->abortCertificate(III)V

    .line 196
    nop

    .line 616
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :goto_1
    return v15

    :pswitch_data_0
    .packed-switch 0x1
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
