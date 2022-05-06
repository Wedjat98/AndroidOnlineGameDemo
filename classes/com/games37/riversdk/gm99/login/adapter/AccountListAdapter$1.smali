.class Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    iput p2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    # getter for: Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->access$100(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    # getter for: Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->access$100(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;->delete(I)V

    .line 80
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    # getter for: Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->access$200(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->notifyDataSetChanged()V

    .line 82
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    # getter for: Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->access$200(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;->this$0:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    # getter for: Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->access$100(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;->empty()V

    .line 86
    :cond_38
    return-void
.end method
