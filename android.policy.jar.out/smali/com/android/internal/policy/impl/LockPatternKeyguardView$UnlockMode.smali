.class final enum Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
.super Ljava/lang/Enum;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Pattern"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 153
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPin"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPuk"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 163
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Account"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 168
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Password"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 173
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Unknown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 143
    const-class v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method
