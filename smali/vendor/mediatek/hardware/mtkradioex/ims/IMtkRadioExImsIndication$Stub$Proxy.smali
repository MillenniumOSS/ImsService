.class Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkRadioExImsIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedVersion:I

    .line 819
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 816
    iput-object p1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 817
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 822
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public audioIndication(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1013
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    nop

    .line 1015
    return-void

    .line 1009
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method audioIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":I
    .end local p3    # "audio":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":I
    .restart local p3    # "audio":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    throw v1
.end method

.method public callInfoIndication(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1308
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1311
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1317
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1318
    nop

    .line 1319
    return-void

    .line 1313
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callInfoIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "data":[Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "data":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1318
    throw v1
.end method

.method public callRatIndication(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "domain"    # I
    .param p3, "rat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1531
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    nop

    .line 1533
    return-void

    .line 1527
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callRatIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "domain":I
    .end local p3    # "rat":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "domain":I
    .restart local p3    # "rat":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    throw v1
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1322
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1324
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1337
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    nop

    .line 1339
    return-void

    .line 1333
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callmodChangeIndicator is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "callMode":Ljava/lang/String;
    .end local p4    # "videoState":Ljava/lang/String;
    .end local p5    # "audioDirection":Ljava/lang/String;
    .end local p6    # "pau":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p3    # "callMode":Ljava/lang/String;
    .restart local p4    # "videoState":Ljava/lang/String;
    .restart local p5    # "audioDirection":Ljava/lang/String;
    .restart local p6    # "pau":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    throw v1
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "msg"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 886
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 892
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return-void

    .line 888
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cdmaNewSmsEx is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "msg":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "msg":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v1
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1344
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1352
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1358
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    nop

    .line 1360
    return-void

    .line 1354
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method econfResultIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "confCallId":Ljava/lang/String;
    .end local p3    # "op":Ljava/lang/String;
    .end local p4    # "num":Ljava/lang/String;
    .end local p5    # "result":Ljava/lang/String;
    .end local p6    # "cause":Ljava/lang/String;
    .end local p7    # "joinedCallId":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "confCallId":Ljava/lang/String;
    .restart local p3    # "op":Ljava/lang/String;
    .restart local p4    # "num":Ljava/lang/String;
    .restart local p5    # "result":Ljava/lang/String;
    .restart local p6    # "cause":Ljava/lang/String;
    .restart local p7    # "joinedCallId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw v1
.end method

.method public ectIndication(IIII)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "call_id"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1301
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1302
    nop

    .line 1303
    return-void

    .line 1297
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method ectIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "call_id":I
    .end local p3    # "ectResult":I
    .end local p4    # "cause":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "call_id":I
    .restart local p3    # "ectResult":I
    .restart local p4    # "cause":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1302
    throw v1
.end method

.method public eregrtInfoInd(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1138
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1144
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1140
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method eregrtInfoInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "info":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "info":[I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 826
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1652
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1654
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1656
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1657
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1658
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1659
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1661
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1663
    goto :goto_0

    .line 1661
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1663
    throw v2

    .line 1665
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1651
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1636
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1639
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1640
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    goto :goto_0

    .line 1644
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    throw v2

    .line 1648
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public imsBearerInit(I)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 858
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    nop

    .line 860
    return-void

    .line 854
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsBearerInit is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    throw v1
.end method

.method public imsBearerStateNotify(IIILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 843
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    nop

    .line 845
    return-void

    .line 839
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsBearerStateNotify is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "aid":I
    .end local p3    # "action":I
    .end local p4    # "capability":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "aid":I
    .restart local p3    # "action":I
    .restart local p4    # "capability":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw v1
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1553
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1558
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1564
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1560
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsCfgConfigChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "phoneId":I
    .end local p3    # "configId":Ljava/lang/String;
    .end local p4    # "value":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1564
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "phoneId":I
    .restart local p3    # "configId":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    throw v1
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1589
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1597
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    nop

    .line 1599
    return-void

    .line 1593
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsCfgConfigLoaded is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1597
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    throw v1
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1536
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1546
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    nop

    .line 1548
    return-void

    .line 1542
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsCfgDynamicImsSwitchComplete is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw v1
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1571
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1582
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    nop

    .line 1584
    return-void

    .line 1578
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsCfgFeatureChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "phoneId":I
    .end local p3    # "featureId":I
    .end local p4    # "value":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "phoneId":I
    .restart local p3    # "featureId":I
    .restart local p4    # "value":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    throw v1
.end method

.method public imsConferenceInfoIndication(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "participants"    # [Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1389
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1395
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    nop

    .line 1397
    return-void

    .line 1391
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsConferenceInfoIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "participants":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "participants":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw v1
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 876
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    nop

    .line 878
    return-void

    .line 872
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsDataInfoNotify is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "capability":Ljava/lang/String;
    .end local p3    # "event":Ljava/lang/String;
    .end local p4    # "extra":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "capability":Ljava/lang/String;
    .restart local p3    # "event":Ljava/lang/String;
    .restart local p4    # "extra":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v1
.end method

.method public imsDialogIndication(I[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "dialogList"    # [Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1420
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1422
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1425
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1431
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    nop

    .line 1433
    return-void

    .line 1427
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsDialogIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "dialogList":[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "dialogList":[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    throw v1
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1485
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x27

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1498
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1494
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsEventPackageIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "ptype":Ljava/lang/String;
    .end local p4    # "urcIdx":Ljava/lang/String;
    .end local p5    # "totalUrcCount":Ljava/lang/String;
    .end local p6    # "rawData":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p3    # "ptype":Ljava/lang/String;
    .restart local p4    # "urcIdx":Ljava/lang/String;
    .restart local p5    # "totalUrcCount":Ljava/lang/String;
    .restart local p6    # "rawData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw v1
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1453
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1462
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1458
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRedialEmergencyIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1462
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    throw v1
.end method

.method public imsRegFlagInd(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1160
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    nop

    .line 1162
    return-void

    .line 1156
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRegFlagInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "flag":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "flag":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    throw v1
.end method

.method public imsRegInfoInd(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1122
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1128
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1124
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRegInfoInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "info":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "info":[I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    throw v1
.end method

.method public imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "report"    # Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1103
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1106
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1112
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1113
    nop

    .line 1114
    return-void

    .line 1108
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRegStatusReport is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "report":Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "report":Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1113
    throw v1
.end method

.method public imsRegistrationInfo(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "registerState"    # I
    .param p3, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1052
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1062
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    nop

    .line 1064
    return-void

    .line 1058
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRegistrationInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "registerState":I
    .end local p3    # "capability":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "registerState":I
    .restart local p3    # "capability":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v1
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;
    .param p7, "jitter"    # Ljava/lang/String;
    .param p8, "delay"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1167
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1182
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1183
    nop

    .line 1184
    return-void

    .line 1178
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsRtpInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "pdnId":Ljava/lang/String;
    .end local p3    # "networkId":Ljava/lang/String;
    .end local p4    # "timer":Ljava/lang/String;
    .end local p5    # "sendPktLost":Ljava/lang/String;
    .end local p6    # "recvPktLost":Ljava/lang/String;
    .end local p7    # "jitter":Ljava/lang/String;
    .end local p8    # "delay":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "pdnId":Ljava/lang/String;
    .restart local p3    # "networkId":Ljava/lang/String;
    .restart local p4    # "timer":Ljava/lang/String;
    .restart local p5    # "sendPktLost":Ljava/lang/String;
    .restart local p6    # "recvPktLost":Ljava/lang/String;
    .restart local p7    # "jitter":Ljava/lang/String;
    .restart local p8    # "delay":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1183
    throw v1
.end method

.method public imsSupportEcc(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1078
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    nop

    .line 1080
    return-void

    .line 1074
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method imsSupportEcc is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "supportLteEcc":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "supportLteEcc":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    throw v1
.end method

.method public incomingCallSipInviteIndication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1624
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1630
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    nop

    .line 1632
    return-void

    .line 1626
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method incomingCallSipInviteIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "number":Ljava/lang/String;
    .end local p3    # "text":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "number":Ljava/lang/String;
    .restart local p3    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    throw v1
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1415
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1416
    nop

    .line 1417
    return-void

    .line 1411
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method lteMessageWaitingIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "ptype":Ljava/lang/String;
    .end local p4    # "urcIdx":Ljava/lang/String;
    .end local p5    # "totalUrcCount":Ljava/lang/String;
    .end local p6    # "rawData":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1415
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p3    # "ptype":Ljava/lang/String;
    .restart local p4    # "urcIdx":Ljava/lang/String;
    .restart local p5    # "totalUrcCount":Ljava/lang/String;
    .restart local p6    # "rawData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1416
    throw v1
.end method

.method public newSmsEx(I[B)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 915
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 918
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 924
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    nop

    .line 926
    return-void

    .line 920
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method newSmsEx is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "pdu":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "pdu":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw v1
.end method

.method public newSmsStatusReportEx(I[B)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 902
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 908
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 910
    return-void

    .line 904
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method newSmsStatusReportEx is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "pdu":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "pdu":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v1
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1438
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1446
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1447
    nop

    .line 1448
    return-void

    .line 1442
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method noEmergencyCallbackMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1447
    throw v1
.end method

.method public onMDInternetUsageInd(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1277
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1283
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1279
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onMDInternetUsageInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "info":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1283
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "info":[I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1284
    throw v1
.end method

.method public onSsacStatus(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "status"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1604
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1607
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1613
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    nop

    .line 1615
    return-void

    .line 1609
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSsacStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "status":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "status":[I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    throw v1
.end method

.method public onUssi(IILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "modeType"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1207
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1217
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1213
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onUssi is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "modeType":I
    .end local p3    # "msg":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "modeType":I
    .restart local p3    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    throw v1
.end method

.method public onVolteSubscription(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1222
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1233
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1229
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onVolteSubscription is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "status":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "status":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    throw v1
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1189
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1200
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1201
    nop

    .line 1202
    return-void

    .line 1196
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onXui is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "accountId":Ljava/lang/String;
    .end local p3    # "broadcastFlag":Ljava/lang/String;
    .end local p4    # "xuiInfo":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "accountId":Ljava/lang/String;
    .restart local p3    # "broadcastFlag":Ljava/lang/String;
    .restart local p4    # "xuiInfo":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1201
    throw v1
.end method

.method public rttCapabilityIndication(IIIIII)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "localCap"    # I
    .param p4, "remoteCap"    # I
    .param p5, "localStatus"    # I
    .param p6, "remoteStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 966
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 979
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    nop

    .line 981
    return-void

    .line 975
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method rttCapabilityIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":I
    .end local p3    # "localCap":I
    .end local p4    # "remoteCap":I
    .end local p5    # "localStatus":I
    .end local p6    # "remoteStatus":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":I
    .restart local p3    # "localCap":I
    .restart local p4    # "remoteCap":I
    .restart local p5    # "localStatus":I
    .restart local p6    # "remoteStatus":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    throw v1
.end method

.method public rttModifyRequestReceive(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "rttType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 986
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 996
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    nop

    .line 998
    return-void

    .line 992
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method rttModifyRequestReceive is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":I
    .end local p3    # "rttType":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":I
    .restart local p3    # "rttType":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    throw v1
.end method

.method public rttModifyResponse(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 931
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 941
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    nop

    .line 943
    return-void

    .line 937
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method rttModifyResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":I
    .end local p3    # "result":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":I
    .restart local p3    # "result":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    throw v1
.end method

.method public rttTextReceive(IIILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 948
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 959
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    nop

    .line 961
    return-void

    .line 955
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method rttTextReceive is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":I
    .end local p3    # "lenOfString":I
    .end local p4    # "text":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":I
    .restart local p3    # "lenOfString":I
    .restart local p4    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw v1
.end method

.method public sendVopsIndication(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "vops"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1029
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    nop

    .line 1031
    return-void

    .line 1025
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendVopsIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "vops":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "vops":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    throw v1
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1363
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1373
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1379
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    nop

    .line 1381
    return-void

    .line 1375
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sipCallProgressIndicator is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "dir":Ljava/lang/String;
    .end local p4    # "sipMsgType":Ljava/lang/String;
    .end local p5    # "method":Ljava/lang/String;
    .end local p6    # "responseCode":Ljava/lang/String;
    .end local p7    # "reasonText":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p3    # "dir":Ljava/lang/String;
    .restart local p4    # "sipMsgType":Ljava/lang/String;
    .restart local p5    # "method":Ljava/lang/String;
    .restart local p6    # "responseCode":Ljava/lang/String;
    .restart local p7    # "reasonText":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    throw v1
.end method

.method public sipHeaderReport(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1503
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1505
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1508
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x28

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1514
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    nop

    .line 1516
    return-void

    .line 1510
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sipHeaderReport is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "data":[Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "data":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw v1
.end method

.method public sipRegInfoInd(III[Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "account_id"    # I
    .param p3, "response_code"    # I
    .param p4, "info"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1085
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1096
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1092
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sipRegInfoInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "account_id":I
    .end local p3    # "response_code":I
    .end local p4    # "info":[Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "account_id":I
    .restart local p3    # "response_code":I
    .restart local p4    # "info":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1097
    throw v1
.end method

.method public speechCodecInfoIndication(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1469
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1478
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    nop

    .line 1480
    return-void

    .line 1474
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method speechCodecInfoIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "info":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "info":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    throw v1
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1251
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    nop

    .line 1253
    return-void

    .line 1247
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method videoCapabilityIndicator is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "localVideoCap":Ljava/lang/String;
    .end local p4    # "remoteVideoCap":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p3    # "localVideoCap":Ljava/lang/String;
    .restart local p4    # "remoteVideoCap":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    throw v1
.end method

.method public videoRingtoneEventInd(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "event"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1267
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1268
    nop

    .line 1269
    return-void

    .line 1263
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method videoRingtoneEventInd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "event":[Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "event":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1268
    throw v1
.end method

.method public volteSetting(IZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1036
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1039
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1045
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    nop

    .line 1047
    return-void

    .line 1041
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method volteSetting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "isEnable":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "isEnable":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    throw v1
.end method
