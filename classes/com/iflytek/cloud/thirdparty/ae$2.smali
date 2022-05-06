.class Lcom/iflytek/cloud/thirdparty/ae$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/thirdparty/ae;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ae;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ae$2;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$2;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ae;->b(Lcom/iflytek/cloud/thirdparty/ae;)V

    return-void
.end method
