.class final Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "MwiRIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/ril/MwiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderServiceDeathRecipient"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: mRadioProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v2, v2, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v2, v2, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 491
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 490
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->unlinkToDeath()V

    .line 493
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    if-eqz p1, :cond_0

    .line 475
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 476
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 478
    :cond_0
    return-void
.end method

.method public declared-synchronized unlinkToDeath()V
    .locals 2

    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;
    :cond_0
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
