.class Landroid/media/AudioService$5;
.super Landroid/os/TokenWatcher;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5385
    iput-object p1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    invoke-direct {p0, p2, p3}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 2

    .prologue
    .line 5398
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iget-object v1, v0, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 5399
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->realDisableChangeVolume()V
    invoke-static {v0}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)V

    .line 5400
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iget-object v0, v0, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5401
    monitor-exit v1

    .line 5402
    return-void

    .line 5401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public released()V
    .locals 2

    .prologue
    .line 5389
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iget-object v1, v0, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 5390
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->realEnableChangeVolume()V
    invoke-static {v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)V

    .line 5391
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iget-object v0, v0, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5392
    monitor-exit v1

    .line 5394
    return-void

    .line 5392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
