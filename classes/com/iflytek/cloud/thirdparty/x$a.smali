.class public Lcom/iflytek/cloud/thirdparty/x$a;
.super Lcom/iflytek/cloud/thirdparty/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/cloud/thirdparty/x$b",
        "<[B",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([BLjava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/x$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .registers 1

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/x$b;->a()V

    return-void
.end method
