.class Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;
.super Ljava/lang/Object;
.source "ReviewsFragmentXLarge.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->updateSubmitState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$200(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 75
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 66
    return-void
.end method
