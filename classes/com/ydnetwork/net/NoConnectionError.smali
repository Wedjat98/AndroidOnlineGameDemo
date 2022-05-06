.class public Lcom/ydnetwork/net/NoConnectionError;
.super Lcom/ydnetwork/net/NetworkError;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ydnetwork/net/NetworkError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/NetworkError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
