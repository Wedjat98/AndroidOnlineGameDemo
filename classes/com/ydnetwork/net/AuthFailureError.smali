.class public Lcom/ydnetwork/net/AuthFailureError;
.super Lcom/ydnetwork/net/VolleyError;


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ydnetwork/net/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Lcom/ydnetwork/net/VolleyError;-><init>()V

    iput-object p1, p0, Lcom/ydnetwork/net/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/NetworkResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/VolleyError;-><init>(Lcom/ydnetwork/net/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ydnetwork/net/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/ydnetwork/net/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
