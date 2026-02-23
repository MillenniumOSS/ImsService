.class Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VTSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraDeviceCallback"
.end annotation


# instance fields
.field private deviceHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mediatek/ims/internal/VTSource$DeviceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1671
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 1672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    .line 1673
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1749
    const-string v0, "[HDR] [onClosed]"

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1751
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1752
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    .line 1755
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 1756
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmDeviceConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1757
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HDR] [onDisconnected] cameraDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1715
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1716
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    return-void

    .line 1719
    :cond_0
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmCameraDevice(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1720
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmCameraDevice(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1721
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fputmCameraDevice(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraDevice;)V

    .line 1723
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmDeviceConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1724
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HDR] [onError] error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1680
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1681
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void

    .line 1684
    :cond_0
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmRetryCount(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_2

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmStopPreviewAndRecord(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1689
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmRetryCount(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fputmRetryCount(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;I)V

    .line 1691
    const-wide/16 v1, 0x190

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    goto :goto_0

    .line 1692
    :catch_0
    move-exception v1

    .line 1693
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1695
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmCameraId(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$mdoOpenCamera(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Ljava/lang/String;)V

    .line 1696
    return-void

    .line 1698
    :cond_2
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmDeviceConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 1699
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmIsWaitRelease(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1700
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1701
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    goto :goto_1

    .line 1704
    :cond_3
    const-string v2, "mIsWaitRelease means call end or VTS error, ignore MA error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1707
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onOpenFail()V

    .line 1709
    :cond_5
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1728
    const-string v0, "[HDR] [onOpened]"

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraDeviceCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1730
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1731
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return-void

    .line 1734
    :cond_0
    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fputmCameraDevice(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraDevice;)V

    .line 1735
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmCachedPreviewSurface(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1736
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmMessageId(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmCachedPreviewSurface(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1737
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [onOpened] Send message to handler ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmMessageId(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 1739
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1738
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmDeviceConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1742
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1743
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onOpenSuccess()V

    .line 1745
    :cond_2
    return-void
.end method
