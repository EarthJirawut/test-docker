const HelloPage = () => {
  return (
    <div className="w-screen h-screen font-bold flex flex-col justify-center items-center text-xl text-blue-500">
      HELLO WORLD
      <p>ENV: {process.env.NEXT_PUBLIC_DB_HOST}</p>
    </div>
  );
};
export default HelloPage;
