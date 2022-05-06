.class Lcom/ledo/fantasy/update/UpdateEngineActivity$1;
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
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$1;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$1;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_LodingImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$13(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 213
    return-void
.end method
