.class Lcom/ledo/fantasy/update/UpdateEngineActivity$2;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;->showUpdateEngineView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$2;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$2;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Image:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$14(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$2;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # invokes: Lcom/ledo/fantasy/update/UpdateEngineActivity;->getBackImage()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$15(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    return-void
.end method
