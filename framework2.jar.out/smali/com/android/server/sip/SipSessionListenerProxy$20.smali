.class Lcom/android/server/sip/SipSessionListenerProxy$20;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$session:Landroid/net/sip/ISipSession;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$session:Landroid/net/sip/ISipSession;

    iput p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$errorCode:I

    iput-object p4, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$errorMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$uuid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #getter for: Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$session:Landroid/net/sip/ISipSession;

    iget v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$errorCode:I

    iget-object v4, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$errorMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->val$uuid:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/net/sip/ISipSessionListener;->onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$20;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onMessageFailed()"

    #calls: Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
