.class public Lcom/ydnetwork/net/NetworkError;
.super Lcom/ydnetwork/net/VolleyError;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ydnetwork/net/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/NetworkResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/VolleyError;-><init>(Lcom/ydnetwork/net/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
