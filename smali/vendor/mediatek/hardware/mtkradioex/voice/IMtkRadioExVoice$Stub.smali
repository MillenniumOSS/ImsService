.class public abstract Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExVoice.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCallSubAddress:I = 0x3

.field static final TRANSACTION_getColp:I = 0x4

.field static final TRANSACTION_getColr:I = 0x5

.field static final TRANSACTION_getEccNum:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hangupAll:I = 0x1

.field static final TRANSACTION_hangupWithReason:I = 0x2

.field static final TRANSACTION_queryCallForwardInTimeSlotStatus:I = 0x7

.field static final TRANSACTION_resetSuppServ:I = 0x8

.field static final TRANSACTION_responseAcknowledgementMtk:I = 0x19

.field static final TRANSACTION_sendCnap:I = 0x9

.field static final TRANSACTION_setBarringPasswordCheckedByNW:I = 0xa

.field static final TRANSACTION_setCallForwardInTimeSlot:I = 0xb

.field static final TRANSACTION_setCallIndication:I = 0xc

.field static final TRANSACTION_setCallSubAddress:I = 0xd

.field static final TRANSACTION_setCallValidTimer:I = 0xe

.field static final TRANSACTION_setClip:I = 0xf

.field static final TRANSACTION_setColp:I = 0x10

.field static final TRANSACTION_setColr:I = 0x11

.field static final TRANSACTION_setEccMode:I = 0x12

.field static final TRANSACTION_setEccNum:I = 0x13

.field static final TRANSACTION_setGwsdMode:I = 0x14

.field static final TRANSACTION_setIgnoreSameNumberInterval:I = 0x15

.field static final TRANSACTION_setKeepAliveByIpData:I = 0x16

.field static final TRANSACTION_setKeepAliveByPDCPCtrlPDU:I = 0x17

.field static final TRANSACTION_setResponseFunctionsMtk:I = 0x1a

.field static final TRANSACTION_setResponseFunctionsMtkIms:I = 0x1b

.field static final TRANSACTION_setSuppServProperty:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->markVintfStability()V

    .line 125
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    if-eqz v1, :cond_1

    .line 138
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-object v1

    .line 140
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 144
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 149
    .local v7, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    if-gt p1, v1, :cond_0

    .line 150
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v8

    .line 156
    :cond_1
    if-ne p1, v1, :cond_2

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return v8

    .line 161
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v8

    .line 166
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 486
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;

    move-result-object v1

    .line 488
    .local v1, "_arg0":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;

    move-result-object v2

    .line 489
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;)V

    .line 491
    goto/16 :goto_0

    .line 476
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;

    move-result-object v1

    .line 478
    .restart local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;

    move-result-object v2

    .line 479
    .restart local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;)V

    .line 481
    goto/16 :goto_0

    .line 470
    .end local v1    # "_arg0":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
    :pswitch_2
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->responseAcknowledgementMtk()V

    .line 471
    goto/16 :goto_0

    .line 457
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;I)V

    .line 466
    goto/16 :goto_0

    .line 445
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 450
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;I)V

    .line 452
    goto/16 :goto_0

    .line 433
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 438
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setKeepAliveByIpData(ILjava/lang/String;I)V

    .line 440
    goto/16 :goto_0

    .line 421
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setIgnoreSameNumberInterval(III)V

    .line 428
    goto/16 :goto_0

    .line 409
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 414
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setGwsdMode(I[Ljava/lang/String;I)V

    .line 416
    goto/16 :goto_0

    .line 395
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;I)V

    .line 404
    goto/16 :goto_0

    .line 377
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 385
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 387
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 388
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setEccMode(ILjava/lang/String;IIII)V

    .line 390
    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setColr(III)V

    .line 372
    goto/16 :goto_0

    .line 353
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 358
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setColp(III)V

    .line 360
    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setClip(III)V

    .line 348
    goto/16 :goto_0

    .line 329
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setCallValidTimer(III)V

    .line 336
    goto/16 :goto_0

    .line 317
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 321
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setCallSubAddress(IZI)V

    .line 324
    goto/16 :goto_0

    .line 299
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 307
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 310
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setCallIndication(IIIIII)V

    .line 312
    goto/16 :goto_0

    .line 287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    .line 291
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 294
    goto/16 :goto_0

    .line 269
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    .end local v3    # "_arg2":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 280
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    goto/16 :goto_0

    .line 257
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->sendCnap(ILjava/lang/String;I)V

    .line 264
    goto/16 :goto_0

    .line 247
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->resetSuppServ(II)V

    .line 252
    goto/16 :goto_0

    .line 235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    .line 239
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 242
    goto :goto_0

    .line 225
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    .end local v3    # "_arg2":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getEccNum(II)V

    .line 230
    goto :goto_0

    .line 215
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getColr(II)V

    .line 220
    goto :goto_0

    .line 205
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getColp(II)V

    .line 210
    goto :goto_0

    .line 195
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->getCallSubAddress(II)V

    .line 200
    goto :goto_0

    .line 181
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->hangupWithReason(IIII)V

    .line 190
    goto :goto_0

    .line 171
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->hangupAll(II)V

    .line 176
    nop

    .line 498
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :goto_0
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
