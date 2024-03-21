<<<<<<< HEAD
import sqlalchemy as sa
import sqlalchemy.orm as so
from app import create_app, db
from app.models import User, Post, Message, Notification

app = create_app()
=======
from app import app, db
from app.models import User, Post
>>>>>>> upstream/master


@app.shell_context_processor
def make_shell_context():
<<<<<<< HEAD
    return {'sa': sa, 'so': so, 'db': db, 'User': User, 'Post': Post,
            'Message': Message, 'Notification': Notification}
=======
    return {'db': db, 'User': User, 'Post': Post}
>>>>>>> upstream/master
