.class Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VTSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSessionCallback"
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

    .line 1763
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 1764
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraSessionCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    .line 1765
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1783
    const-string v0, "[onConfigureFailed]"

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraSessionCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1785
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1786
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return-void

    .line 1789
    :cond_0
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmSessionConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 1790
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmIsWaitRelease(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1791
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1792
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmEventCallBack(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    goto :goto_0

    .line 1795
    :cond_1
    const-string v2, "mIsWaitRelease means call end or VTS error, ignore MA error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1769
    const-string v0, "[onConfigured]"

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$CameraSessionCallback;->deviceHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1771
    .local v0, "handler":Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    if-nez v0, :cond_0

    .line 1772
    const-string v2, "error: handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    return-void

    .line 1775
    :cond_0
    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fputmCameraCaptureSession(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1776
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmMessageId(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2, v3}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onConfigured] Send message to handler ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmVTsource(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->-$$Nest$fgetmMessageId(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->-$$Nest$fgetmSessionConditionVariable(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1779
    return-void
.end method
