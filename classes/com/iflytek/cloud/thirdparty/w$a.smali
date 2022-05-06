.class Lcom/iflytek/cloud/thirdparty/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/w;


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/thirdparty/w;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/thirdparty/w;Lcom/iflytek/cloud/thirdparty/w$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/w$a;-><init>(Lcom/iflytek/cloud/thirdparty/w;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/w;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/w;->b(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/w$b;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/w;->b(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/w$b;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/w$b;->a([BI)V

    :cond_2e
    return-object v3
.end method
