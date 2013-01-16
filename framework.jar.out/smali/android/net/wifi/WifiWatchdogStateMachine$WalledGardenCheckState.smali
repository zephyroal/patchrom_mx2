.class Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalledGardenCheckState"
.end annotation


# instance fields
.field private mWalledGardenToken:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 700
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 701
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100c

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 703
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 707
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 719
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    .line 709
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    if-ne v0, v1, :cond_1

    .line 710
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3102(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 711
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Walled garden detected"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 721
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x2100c
        :pswitch_0
    .end packed-switch
.end method
