.class public abstract Lcom/bumptech/glide/TransitionOptions;
.super Ljava/lang/Object;
.source "TransitionOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/TransitionOptions",
        "<TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private transitionFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->getFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/TransitionOptions;->transitionFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-void
.end method

.method private self()Lcom/bumptech/glide/TransitionOptions;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/bumptech/glide/TransitionOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/TransitionOptions;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 86
    :catch_7
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransition()Lcom/bumptech/glide/TransitionOptions;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->getFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/TransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method final getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/TransitionOptions;->transitionFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-object v0
.end method

.method public final transition(I)Lcom/bumptech/glide/TransitionOptions;
    .registers 3
    .param p1, "viewAnimationId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/TransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    .local p1, "transitionFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<-TTranscodeType;>;"
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/transition/TransitionFactory;

    iput-object v0, p0, Lcom/bumptech/glide/TransitionOptions;->transitionFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 71
    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;->self()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final transition(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/bumptech/glide/TransitionOptions;
    .registers 3
    .param p1, "animator"    # Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<TCHILD;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/TransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method
