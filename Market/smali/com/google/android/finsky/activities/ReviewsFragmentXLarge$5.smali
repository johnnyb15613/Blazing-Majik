.class Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;
.super Ljava/lang/Object;
.source "ReviewsFragmentXLarge.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->configureViews()V
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
    .line 168
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->expandForm()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$300(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 174
    :cond_0
    return-void
.end method
