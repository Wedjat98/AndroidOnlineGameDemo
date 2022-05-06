.class final Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;
.super Ljava/lang/Object;
.source "PurchaseFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->writeDataInThread(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/FileUtil;->save2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
