.class final Lcom/yunding/analysis/sdk/YundingKeyData$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunding/analysis/sdk/YundingKeyData;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    new-instance v0, Lcom/yunding/analysis/sdk/YundingKeyData$1$1;

    invoke-direct {v0, p0}, Lcom/yunding/analysis/sdk/YundingKeyData$1$1;-><init>(Lcom/yunding/analysis/sdk/YundingKeyData$1;)V

    invoke-static {v0}, Lcom/yunding/analysis/b/k;->a(Lcom/yunding/analysis/b/k$a;)V

    return-void
.end method
